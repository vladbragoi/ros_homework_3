#!/bin/bash
echo "Building ..."

export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:~/ros_homework3/ORB_SLAM2_mod/Examples/ROS

./clean.sh
./build.sh
./ORB_SLAM2/build.sh
./ORB_SLAM2/build_ros.sh