#!/usr/bin/env bash

if $*; then
  notify-send "Done" "$*"
  exit 0
else
  exit_code=$?
  notify-send "Exit $exit_code" "$*"
  exit $exit_code
fi
