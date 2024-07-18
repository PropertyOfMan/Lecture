#!/bin/bash

docker build -t ros/humble .

docker run -ti \
           -e "DISPLAY" \
           -e "QT_X11_NO_MITSHM=1" \
           -e "ROS_HOSTNAME=localhost" \
           -e XAUTHORITY \
           -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
           -v /etc/localtime:/etc/localtime:ro \
	   -e "XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir" \
    	   -e "PULSE_SERVER=/mnt/wslg/PulseServer" \
           --net=host \
           --privileged \
           --name "ros2_humble" \
	   ros/humble