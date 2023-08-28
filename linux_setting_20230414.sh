# API 서버 인스턴스 생성 과정

# 1. 인스턴스 업데이트
sudo apt-get update && apt-get upgrade -y

# 2. docker 설치 (참고 : https://docs.docker.com/engine/install/ubuntu/)
### Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

### Installation methods

#Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg

# Add Docker’s official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Use the following command to set up the repository:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |
  sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

### Install Docker Engine

# Update the apt package index:
sudo apt-get update

# Install Docker Engine, containerd, and Docker Compose.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify that the Docker Engine installation is successful by running the hello-world image:
sudo docker run hello-world

### Linux post-installation steps for Docker Engine - Manage Docker as a non-root user

# Create the docker group.
sudo groupadd docker

# Add your user to the docker group.
sudo usermod -aG docker $USER

# Log out and log back in so that your group membership is re-evaluated.
newgrp docker

# Verify that you can run docker commands without sudo.
docker run hello-world

### Configure Docker to start on boot with systemd

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# reference: https://docs.docker.com/engine/install/ubuntu/#next-steps
