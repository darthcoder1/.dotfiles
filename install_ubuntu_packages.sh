#!/bin/bash
sudo apt update
sudo apt upgrade

INSTALL_DOCKER=true

# install essential stuff
sudo apt install -y build-essential gcc clang clang-format apt-transport-https \
ca-certificates curl gnupg-agent software-properties-common vim

# install docker
if [ "$INSTALL_DOCKER" == true ]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
    
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io
    
    # add current user to docker group to allow for non-root execution
    sudo groupadd docker || true
    sudo usermod -aG docker $USER
    
    # reload group policies
    newgrp docker
    
    # activate docker on startup
    sudo systemctl enable docker
fi
