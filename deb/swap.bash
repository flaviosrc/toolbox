#!/bin/bash

echo "Increace ubuntu swapfile size"

echo "Swap size(GB):"
read SIZE

echo "Making swap off"
sudo swapoff -a

echo "Resizing the swapfile to $SIZE GB"
sudo dd if=/dev/zero of=/swapfile bs="$SIZE"M count=1024

echo "Making swapfile usable"
sudo mkswap /swapfile

echo "Making swap on"
sudo swapon /swapfile

echo "Done!"
