FROM osrf/ros:humble-desktop-full

RUN sudo apt-get update

RUN sudo apt-get install -y tmux

RUN touch ~/.tmux.conf && \
    echo "set -g mouse on" >> ~/.tmux.conf

RUN sudo apt-get install -y ros-humble-turtlebot3*
RUN sudo apt-get install -y gedit

RUN echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
