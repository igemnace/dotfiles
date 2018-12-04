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
xset -dpms &
xset s off &
xautolock -time 15 -locker lockscreen &

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# let PulseAudio manage the bell event
pactl upload-sample /usr/share/sounds/freedesktop/stereo/bell.oga x11-bell
pactl load-module module-x11-bell sample=x11-bell display="$DISPLAY" &
xset b 100 &

# set up a wallpaper
feh --bg-scale "$HOME/Pictures/Wallpapers/Elbereth.png" &

exec i3
