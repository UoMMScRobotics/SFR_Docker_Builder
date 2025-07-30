FROM ubuntu:24.04
LABEL authors="Murilo Marinho"

ENTRYPOINT ["/bin/bash", "-c"]

RUN apt-get update && apt-get install sudo
RUN sudo apt-get install wget
RUN wget https://raw.githubusercontent.com/UoMMScRobotics/SFR_Docker_Builder/refs/heads/main/install_basics.sh
RUN chmod +x install_basics.sh && bash -c "./install_basics.sh"
RUN wget https://raw.githubusercontent.com/UoMMScRobotics/SFR_Docker_Builder/refs/heads/main/install_ros2.sh
RUN chmod +x install_ros2.sh && bash -c "./install_ros2.sh"
