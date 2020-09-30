//
//Created by sundong 29/9/20
//

#include <iostream>
#include <string>
#include <mutex>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <boost/bind.hpp>
#include "glog/logging.h"
#include "gflags/gflags.h"
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Point.h>
#include <queue>

#include "sensor_driver_msgs/GpswithHeading.h"

class Txt_pub {

public:
    Txt_pub(ros::NodeHandle& nh);
    bool Read_txt(std::string pathdir);
    void Linear_interpolation(std::queue<geometry_msgs::Point> &point);
    void Pub_gps();
//    ~Txt_pub();
    
private:
    std::string path_dir;
    ros::Publisher pub;
    ros::Timer loop_time;
    bool flag_read_finish;
    std::queue<geometry_msgs::Point> point_raw;
    std::queue<geometry_msgs::Point> point_cov;
    sensor_driver_msgs::GpswithHeading gps;

};

