FROM ubuntu:24.04
LABEL authors="Murilo Marinho"

ENTRYPOINT ["/bin/bash", "-c"]

RUN chmod +x install_basics.sh && bash -c "./install_basics.sh"
RUN chmod +x install_ros2.sh && bash -c "./install_ros2.sh"
