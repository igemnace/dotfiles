#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# use setxkbmap
setxkbmap -option ctrl:nocaps,shift:both_capslock &

# merge in defaults and keymaps
if [ -f "$sysresources" ]; then
  xrdb -merge "$sysresources"
fi

if [ -f "$sysmodmap" ]; then
  xmodmap "$sysmodmap"
fi

if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
  xmodmap "$usermodmap"
fi

# start xcape
xcape -t 200 &

# start xbindkeys
xbindkeys &

# set up xautolock
xset s 900 &
xss-lock lockscreen &

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# start urxvtd here
# check archwiki page why urxvtd is started here instead of in a systemd service
urxvtd -q -f -o &

# start dunst here
# dunst can only really work with DISPLAY set
dunst &

# start playerctld
playerctld daemon &

# set up a wallpaper
feh --bg-scale "$HOME/Pictures/Wallpapers/Elbereth.png" &

# start picom
picom -b

exec i3
