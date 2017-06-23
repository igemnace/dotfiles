#!/usr/bin/env bash

scrot '%Y-%m-%d_%H-%M-%S.png' --exec 'mv $f ~/Pictures/Screenshots' \
  && notify-send --urgency=normal "Screenshot taken!"
