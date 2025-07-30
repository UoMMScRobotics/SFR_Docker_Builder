FROM ubuntu:24.04
LABEL authors="Murilo Marinho"

ENTRYPOINT ["/bin/bash", "-c"]

RUN apt-get update && apt-get install sudo -y
RUN sudo apt-get install wget -y
RUN wget https://raw.githubusercontent.com/UoMMScRobotics/SFR_Docker_Builder/refs/heads/main/install_ros2.sh
RUN chmod +x install_ros2.sh && bash -c "./install_ros2.sh"
