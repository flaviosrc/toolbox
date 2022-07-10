#!/bin/bash

# An automatic device mounting tool

if [$USER != "root"];
then
  echo "run as root!"
  exit 1
fi

echo "Device (Ex. /dev/sda1):"
read device

echo "Is encrypted? [y/n]"
read is_encrypted

if [$is_encrypted == "y"];
then
cryptsetup open $device encrypted_device
mount /dev/mapper/encrypted_device /mnt/encrypted_device
else
mount $device /mnt/device
fi

exit 0