#!/bin/bash

# config rpm fusion package repository

sudo dnf install -y \
https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo yum update

# sudo yum install -y obs-studio telegram discord postgresql vlc
