#!/bin/bash
source ./devel/setup.bash
export ROS_MASTER_URI=http://1.1.1.2:11311
hostname –I 1.1.1.3
export ROS_IP=1.1.1.3
rosrun control_esc_v3 esc_out_v3

