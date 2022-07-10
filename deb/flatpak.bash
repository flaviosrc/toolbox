#!/bin/bash

clear
cd ~/


echo "Installing Flatpak"

sudo apt update
sudo apt install flatpak -y -f
sudo apt install gnome-software-plugin-flatpak -y -f
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
