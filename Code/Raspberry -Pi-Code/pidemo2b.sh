#!/bin/sh
cd /home/pi3/Desktop
export ROS_IP=192.168.0.106
roslaunch freenect_launch freenect.launch depth_registration:=true data_skip:=2
