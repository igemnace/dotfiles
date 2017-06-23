#!/usr/bin/env bash

i3status | while :; do
  read line
  cmus=$($HOME/Documents/Misc/scripts/cmus-status.sh)

  final_cmus=
  if [ ! -z "$cmus" ]; then
    final_cmus=" $cmus | "
  fi

  echo "${final_cmus}${line}" || exit 1
done
