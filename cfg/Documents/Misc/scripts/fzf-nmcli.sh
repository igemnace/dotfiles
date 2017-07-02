#!/usr/bin/env bash

chosen_wifi=$(nmcli --terse device wifi list | cut -f 2,7,8 -d ':' | tr ':' $'\t' | FZF_DEFAULT_OPTS='--no-bold --color=fg:7,fg+:3,bg:-1,bg+:-1,hl:5,hl+:5,prompt:8,pointer:3,marker:2' fzf)

[ -z "$chosen_wifi" ] && exit 1

chosen_ssid=$(echo "$chosen_wifi" | cut -f 1)
security=$(echo "$chosen_wifi" | cut -f 3)

if nmcli --terse connection show "$chosen_ssid" &>/dev/null; then
  >&2 echo "Activating existing profile for $chosen_ssid..."
  nmcli connection up "$chosen_ssid" &
else
  if [[ $security =~ "WPA" ]]; then
    read -p "Password: " password

    >&2 echo "Connecting to $chosen_ssid..."
    nmcli device wifi connect "$chosen_ssid" password "$password" &
  else
    >&2 echo "Connecting to $chosen_ssid..."
    nmcli device wifi connect "$chosen_ssid" &
  fi
fi
