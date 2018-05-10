#!/bin/sh
set -e
cd /home/pihost/Desktop
export ROS_IP=192.168.0.104
roscore
