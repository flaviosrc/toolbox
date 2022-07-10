#!/bin/bash

cd ~/
clear

echo "My ubuntu starterpack"

bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/chorme.bash | sed 1d)
bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/anydesk.bash | sed 1d)
bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/zsh.bash | sed 1d)

sudo apt-get update
sudo apt-get install git virt-manager gnome-tweaks peek -y -f
