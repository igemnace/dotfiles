#!/usr/bin/env bash

# display and prompt for wifi with fzf
chosen_wifi=$(nmcli --terse device wifi list | cut -f 2,7,8 -d ':' | tr ':' $'\t' | FZF_DEFAULT_OPTS='--no-bold --color=fg:7,fg+:3,bg:-1,bg+:-1,hl:5,hl+:5,prompt:8,pointer:3,marker:2' fzf)

# fail fast if no wifi is chosen
[ -z "$chosen_wifi" ] && exit 1

chosen_ssid=$(cut -f 1 <<< "$chosen_wifi")
security=$(cut -f 3 <<< "$chosen_wifi")

# check for existing NetworkManager connection
if nmcli --terse connection show "$chosen_ssid" &>/dev/null; then
  >&2 echo "Activating existing profile for $chosen_ssid..."
  nmcli connection up "$chosen_ssid"
else
  # check if password is necessary
  if [[ $security =~ "WPA" ]]; then
    read -r -p "Password: " password

    >&2 echo "Connecting to $chosen_ssid..."
    nmcli device wifi connect "$chosen_ssid" password "$password"
  else
    >&2 echo "Connecting to $chosen_ssid..."
    nmcli device wifi connect "$chosen_ssid"
  fi
fi
