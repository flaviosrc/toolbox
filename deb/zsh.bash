#!/bin/bash

cd ~/
clear

echo "Installing OhMyZsh"
sudo apt-get update
sudo apt-get install zsh -y -f
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
