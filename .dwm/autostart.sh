#!/bin/sh
numlockx &
dunst &

## KDE polkit
/usr/lib/polkit-kde-authentication-agent-1 &

# Wallpaper
nitrogen --restore &

# Tray icons
optimus-manager-qt &
nm-applet &
pamac-tray &

# Startup sound
mplayer ~/Music/boot.wav &

