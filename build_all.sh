#!/bin/bash
echo "Building ..."

PATH=`find ~ -name ros_homework_3`
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:"$PATH"/ORB_SLAM/Examples/ROS

./clean.sh
./build.sh
./ORB_SLAM2/build.sh
./ORB_SLAM2/build_ros.sh