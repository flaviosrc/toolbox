#!/bin/bash

# connect with ssh server using aditional configs

interval="ServerAliveInterval 60"
countMax="ServerAliveCountMax 120"

ssh -o $interval -o $countMax $1
