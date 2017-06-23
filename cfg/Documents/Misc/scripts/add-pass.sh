#!/usr/bin/env bash

echo "Categories:"
ls /home/ian/.password-store/
read -p "New pass name: " pass_name

pass insert $pass_name
