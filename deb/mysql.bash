#!/bin/bash

cd ~/
clear

echo "Installing MySQL"

echo "MySQL username:"
read MYSQLUSERNAME
echo "MySQL password:"
read MYSQLPASSWORD
echo "Database name avoid symbols:"
read DATABASENAME

sudo apt-get update
sudo apt-get install mysql-server -f -y

sudo mysql -e "CREATE USER ${MYSQLUSERNAME}@localhost IDENTIFIED BY '${MYSQLPASSWORD}';
GRANT ALL PRIVILEGES ON * . * TO ${MYSQLUSERNAME}@localhost;
FLUSH PRIVILEGES;"

mysql -u${MYSQLUSERNAME} -p${MYSQLPASSWORD} -e "CREATE DATABASE ${DATABASENAME};"
