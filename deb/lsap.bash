#!/bin/bash

cd ~/
clear

echo "Linux Development Environment for SpringBoot, AngularJS, PostgreSQL and RabbitMQ"

bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/postgresql.bash | sed 1d)
bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/rabbitmq.bash | sed 1d)
bash <(curl -s https://raw.githubusercontent.com/flaviosrc/toolbox/master/deb/js.bash | sed 1d)

sudo apt-get update
sudo apt-get install openjdk-11-jdk maven -y -f

echo Installing IDEs
sudo snap install intellij-idea-community --classic
sudo snap install code --classic

echo Installing Frontend Tools
sudo npm install -g @angular/cli
sudo npm install -g yarn
