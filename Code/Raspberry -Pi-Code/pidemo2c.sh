#!/bin/sh
cd /home/pi3/Desktop
export ROS_IP=192.168.0.106
roslaunch rtabmap_ros rgbd_mapping.launch rtabmap_args:="--delete_db_on_start --Vis/MaxFeatures 500 --Mem/ImagePreDecimation 2 --Mem/ImagePostDecimation 2 --Kp/DetectorStrategy 6 --OdomF2M/MaxSize 1000 --Odom/ImageDecimation 2" rtabmapviz:=false
