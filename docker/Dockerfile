FROM ros:humble AS builder

# Install dependencies
RUN apt-get update \
  && apt-get install -y \
    cmake \
    curl \
    git \
    python3-colcon-common-extensions \
    python3-vcstool \
    wget \
    python3-pip \
    clang lldb lld \
    lsb-release gnupg \
  && pip3 install flask-socketio fastapi uvicorn \
  && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100 \
  && rm -rf /var/lib/apt/lists/*
#   && libgl1-mesa-glx

# Install Gazebo Ignition
RUN curl https://packages.osrfoundation.org/gazebo.gpg --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null \
  && apt-get update \
  && apt-get install -y ignition-fortress


RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# RUN sed -i '$isource "/opt/ros/humble/setup.bash"' /ros_entrypoint.sh

# ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]