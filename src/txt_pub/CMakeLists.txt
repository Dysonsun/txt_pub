cmake_minimum_required(VERSION 2.8.3)
set( CMAKE_CXX_FLAGS "-std=c++11")
set(CUDA_USE_STATIC_CUDA_RUNTIME OFF)

project(txt_pub)

# find_package(Glog REQUIRED)
#find_package(catkin REQUIRED COMPONENTS roscpp std_msgs sensor_msgs pcl_conversions image_transport cv_bridge horizoncam)
#LIST( APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake )
#include("${PROJECT_SOURCE_DIR}/cmake/functions.cmake")
#google_initialize_txt_pub_project()
find_package(catkin REQUIRED COMPONENTS
        roscpp
        std_msgs
        sensor_msgs
        sensor_driver_msgs)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES try_pkg
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib
)


include_directories(
include ${catkin_INCLUDE_DIRS}${Glog_INCLUDE_DIRS}
)


add_executable(txt_pub src/txt_pub.cpp)


# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")


# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


target_link_libraries(txt_pub
  ${catkin_LIBRARIES}
)


# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

# install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )


# catkin_add_gtest(${PROJECT_NAME}-test test/test_try_pkg.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

# catkin_add_nosetests(test)
