#!/bin/bash

# Automatic install docker and docker-compose

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo groupadd docker
sudo usermod -aG docker $USER

DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/1.29.2

sudo curl -L $DOCKER_COMPOSE_URL/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# reboot
