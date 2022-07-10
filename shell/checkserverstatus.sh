#!/bin/bash

## CHECK SERVER STATUS ##

# usage:
# $ ./checkserverstatus.sh "URL:PORT"

# explaining:
# if iterations is 60, sleep_time is 10 seconds and curl_timeout is 2 second
# than the script will check server status every 10 seconds for 12 minutes
# if the server not respode with status 200 at the timeout than exit wth code 1

address=$1
iterations=60
sleep_time=10s
curl_timeout=2s

for counter in $(seq 1 $iterations);
do

 sleep $sleep_time

 http_status=$(timeout $curl_timeout curl -I $address 2>&1 | awk '/HTTP\// {print $2}')

 http_status=${http_status:-400}

 date_time=$(date "+%H:%M:%S - %d/%m/%y")

 echo "["$date_time"] HTTP STATUS: "$http_status" ITERATION: "$counter

 if (($http_status == 200));
 then
  exit 0
 fi

 if (($counter == $iterations));
 then
  exit 1
 fi

done