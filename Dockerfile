FROM ubuntu:24.04
LABEL authors="Murilo Marinho"

ENTRYPOINT ["/bin/bash", "-c"]

RUN chmod +x install_basics.sh && ./install_basics.sh
RUN chmod +x install_ros2.sh && ./install_ros2.sh
