#!/usr/bin/env bash

echo "Categories:"
ls /home/ian/.password-store/
read -p "New pass name: " pass_name

if pass insert $pass_name; then
  notify-send --urgency=normal "New password added for $pass_name."
else
  notify-send --urgency=normal "Failed to add password for $pass_name!"
fi
