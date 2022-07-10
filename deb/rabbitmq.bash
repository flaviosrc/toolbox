#!/bin/bash

cd ~/
clear

echo "Installing RabbitMQ Server"
sudo apt-get update
sudo apt-get install rabbitmq-server -y -f

echo "Configuring RabbitMQ"
sudo systemctl enable rabbitmq-server
sudo systemctl start rabbitmq-server
sudo systemctl stop rabbitmq-server
sudo rabbitmq-plugins enable rabbitmq_management
