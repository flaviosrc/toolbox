#!/bin/zsh

echo "User:"
read user
echo "Group:"
read group

useradd --shell /bin/zsh --user-group $group --create-home $user
passwd $user
