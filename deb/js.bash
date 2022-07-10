#!/bin/bash

cd ~/
clear

echo "Installing JavaScript Tools"

sudo apt-get update
sudo apt-get install npm -y -f

echo "Updating Tools"
sudo npm update npm -g
sudo npm install -g n
sudo n stable
