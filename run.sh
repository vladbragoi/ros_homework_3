#!/bin/bash
gnome-terminal -e 'roscore'
sleep 2
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:~/ORB_SLAM2/Examples/ROS
cd ..
gnome-terminal -e 'rosrun ORB_SLAM2 Stereo ORB_SLAM2/Vocabulary/ORBvoc.txt ORB_SLAM2/Examples/Stereo/EuRoC.yaml true'
sleep 5
rosbag play --pause ~/V1_01_easy.bag /cam0/image_raw:=/camera/left/image_raw /cam1/image_raw:=/camera/right/image_raw

echo -e "Use Ctrl+C in the orb_slam terminal to exit program and save the point-cloud map,\nThen use pcl_viewer to view the map clusterized (pointcloud.pcd)"