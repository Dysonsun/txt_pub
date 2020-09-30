//
//Created by sundong 29/9/20
//

#include "txt_pub.hpp"
#include <fstream>

Txt_pub::Txt_pub(ros::NodeHandle &nh) {
    ros::param::get("~pathdir", path_dir);
    flag_read_finish = false;
    pub = nh.advertise<sensor_driver_msgs::GpswithHeading>("/gpsdata", 50);
    Read_txt(path_dir);
    std::cout<<"1 ok"<<std::endl;
    if(flag_read_finish){
        loop_time = nh.createTimer(ros::Duration(0.05), boost::bind(&Txt_pub::Pub_gps, this));
    }
}
//~Txt_pub(){
//    point
//    google::ShutdownGoogleLogging();
//}

bool Txt_pub::Read_txt(std::string pathdir) {
    std::string file_path = pathdir;
    std::cout << pathdir <<std::endl;
    std::ifstream fin(file_path);

    if (fin.fail()) {
        std::cout << "No Such file:" << file_path.c_str() <<std::endl;
        return false;
    }
    int index;
    int type;
    geometry_msgs::Point pt;
    while (fin >> index >> pt.x >> pt.y >> pt.z >> type) {
            point_raw.push(pt);
            //std::cout << pt.x <<std::endl;
        }
    fin.close();
    std::cout << "read " << point_raw.size() << " points from file.";
    flag_read_finish = true;
    return true;
}

void Txt_pub::Linear_interpolation(std::queue<geometry_msgs::Point> &point){
    //int num_point = point.size();
    geometry_msgs::Point pt1;
    geometry_msgs::Point pt2;
    geometry_msgs::Point pt0;
    if(!point.empty()){
        pt1 = point.front();
        point.pop();
        if(point.empty()){
            return;
        }
        pt2 = point.front();
        point.pop();
        double x_set = (pt2.x - pt1.x)/10.0;
        double y_set = (pt2.y - pt1.y)/10.0;
        double z_set = (pt2.z - pt1.z)/10.0;
        for(int i=0; i<10; i++){
            pt0.x = pt1.x + i*x_set;
            pt0.y = pt1.y + i*y_set;
            pt0.z = pt1.z + i*z_set;
            point_cov.push(pt0);
        }
    }

}


void Txt_pub::Pub_gps() {
    Linear_interpolation(point_raw);
    gps.header.frame_id = "gps_frame";
    gps.header.stamp = ros::Time::now();
    gps.gps.header = gps.header;
    if(!point_cov.empty()){
        gps.gps.longitude = point_cov.front().x;
        gps.gps.latitude = point_cov.front().y;
        gps.gps.altitude = point_cov.front().z;
        point_cov.pop();

    }else{
        ROS_ERROR("END");
    }
    pub.publish(gps);

}



int main(int argc, char** argv){
    ros::init(argc,argv,"txt_pub");
    ros::NodeHandle nh("~");
//    google::ParseCommandLineFlags(&argc, &argv, true);
//    google::InitGoogleLogging(argv[0]);
//    google::InstallFailureSignalHandler();
    Txt_pub txt_pub(nh);
    ros::spin();

}