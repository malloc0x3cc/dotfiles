#!/bin/sh
# Dependencies: imagemagick, i3lock, scrot
img="/tmp/screenshotlock.png"
blur="-blur 2x3"
pixel="-scale 10% -scale 1000%"

scrot --overwrite $img
convert $img $pixel $img
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
i3lock --ignore-empty-password --show-failed-attempts -i $img && sleep 5 && pgrep i3lock && xset dpms force off
