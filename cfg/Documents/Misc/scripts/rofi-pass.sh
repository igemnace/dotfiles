#!/usr/bin/env bash

pass_name=$(cd "$HOME/.password-store" && rg --files | sed 's/\.gpg$//' | rofi -dmenu -i -p "pass:")

[[ -n $pass_name ]] && pass show -c "$pass_name"
