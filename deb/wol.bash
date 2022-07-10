#!/bin/bash

cd ~/
clear

echo "Configuring Linux Wake On Lan"

echo "Installing ethtool"
sudo apt-get update
sudo apt-get install ethtool -y -f

echo "Creating service"
touch /etc/systemd/system/wol.service
 
printf "
[Unit]\n
Description=Wake-on-LAN for enp3s0\n
Requires=network.target\n
After=network.target\n

[Service]\n
ExecStart=/usr/sbin/ethtool -s enp3s0 wol g\n
Type=oneshot\n

[Install]\n
WantedBy=multi-user.target\n
" > sudo /etc/systemd/system/wol.service

echo "Starting service"
sudo systemctl start wol.service
sudo systemctl enable wol.service
sudo systemctl daemon-reload

echo "Done!"

