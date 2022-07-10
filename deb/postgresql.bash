#!/bin/bash

cd ~/
clear

echo Installing PostgreSQL and PGAdmin

echo "Database name: "
read DATABASE
echo "Postgres user password: "
read PASSWORD

sudo apt-get update
sudo apt-get install curl postgresql -y -f

echo "alter user postgres with encrypted password $PASSWORD;" | sudo -u postgres psql
echo "create database $DATABASE;" | sudo -u postgres psql

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list
sudo sudo apt-get update && sudo apt-get install pgadmin4 -y -f


