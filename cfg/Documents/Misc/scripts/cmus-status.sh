#!/usr/bin/env bash

cmus-remote -Q | grep 'title\|\bartist' | cut -f 1,2 -d ' ' --complement | sed '1a-' | paste -s -d ' '
