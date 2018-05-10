#!/bin/sh
# My first script
export ROS_IP=192.168.0.106
export ROS_MASTER_URI=http://192.168.0.104:11311
roslaunch freenect.launch depth_regristration:=true queue_size:=20
