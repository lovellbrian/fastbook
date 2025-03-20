# Specify NVIDIA Devel Image
FROM nvidia/cuda:11.8.0-devel-ubuntu22.04

# Update Ubuntu software
RUN echo "(*) Update Ubuntu22 packages..." \
    && apt-get update --fix-missing\
    && apt-get upgrade -y

# install python and system tools
RUN echo "(*) Installing python and system tools..." \
  && apt-get install software-properties-common wget curl python3-dev python3-pip python3-wheel python3-setuptools -y \
  && apt-get install vim htop zlib1g g++ freeglut3-dev libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev libfreeimage-dev -y \
  && apt-get install --no-install-recommends apt-utils -y \
  && apt-get install procps lsb-release -y
  
#  Install nvtop
RUN echo "(*) Adding Mutiverse repository and installing nvtop..." \
  && apt-add-repository multiverse \
  && apt-get update --fix-missing\
  && apt-get install nvtop

RUN echo "(*) Installing packages..." \
  && apt-get update \
  && apt-get -y install --no-install-recommends graphviz \
  && apt-get install -y libcairo2-dev pkg-config python3-dev \
  && apt-get install -y libgirepository1.0-dev

ENV PATH="/home/vscode/.local/bin:${PATH}"

# Add welcome message
COPY welcome-message.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
