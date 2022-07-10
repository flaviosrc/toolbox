#!/bin/bash

if [$USER != "root"];
then
  echo "Run as root!"
  exit 1
fi

echo "Device (Ex. /dev/sda1):"
read device

echo "Is encrypted? [y/n]"
read is_encrypted

if [$is_encrypted == "y"];
then
umount /mnt/encrypted_device
cryptsetup close /dev/mapper/encrypted_device
else
umount /mnt/device
fi

exit 0