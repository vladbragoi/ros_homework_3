#!/bin/bash

PATH=`find ~ -name ros_homework_3`
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:"$PATH"/ORB_SLAM/Examples/ROS
gnome-terminal -e 'roscore'
sleep 3
gnome-terminal -e 'rosrun ORB_SLAM2 Stereo ORB_SLAM2/Vocabulary/ORBvoc.txt ORB_SLAM2/Examples/Stereo/EuRoC.yaml true'
sleep 5
rosbag play --pause ~/V1_01_easy.bag /cam0/image_raw:=/camera/left/image_raw /cam1/image_raw:=/camera/right/image_raw

echo -e "Don't forget to Ctrl+C the orb_slam terminal to save the pointcloud generated map.
Then you can clusterize it using ./bin/Cluster pointcloud.pcd command"