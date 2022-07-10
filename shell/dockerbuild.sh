#!/bin/bash

# An automatic docker-compose build tool for Itellij IDEA before-launch task

# run inside your docker-compose.yml directory
# usage example: $ ./docker-build.sh rabbitmq postgres pgadmin
# the sleep is important to garanty the services is runing after exit

services=($@)
sleep=false

for service in "${services[@]}"
do
  if (( $(docker-compose ps $service | grep Up --count) == 0 ));
  then
    docker-compose up -d $service
    sleep=true
  fi
done

if [ $sleep = true ];
then
  sleep 15s
fi

exit 0
