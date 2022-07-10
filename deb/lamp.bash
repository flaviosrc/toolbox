#!/bin/bash

cd ~/
clear

echo "Linux Development Environment for Apache MySQL PHP + Node, NPM & Composer"

bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/mysql.bash | sed 1d)
bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/js.bash | sed 1d)

sudo apt-get update
sudo apt-get install apache2 php libapache2-mod-php php-mysql phpmyadmin -f -y

sudo npm install -g getcomposer
sudo composer self-update
