#!/bin/sh

picom  --daemon --config $HOME/.config/picom/picom.conf
dunst &
nitrogen --restore
optimus-manager-qt &
nm-applet &

# Startup sound
mplayer ~/Music/boot.wav &

