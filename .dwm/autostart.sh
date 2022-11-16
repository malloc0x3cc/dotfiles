#!/bin/sh
# Setup monitors / workspaces
if [ "$(xrandr | grep ' connected' | wc -l)" = "2" ]; then
        # Internal + VGA
        xrandr --output DP-1-1 --mode 1600x1200 --left-of eDP-1-1 --primary

	# VGA only
        # xrandr --output DP-1-1 --mode 1600x1200 --primary --output eDP-1-1 --off
else
        # Internal only
        xrandr --output eDP-1-1 --auto
fi


numlockx &
dunst &

# KDE polkit
/usr/lib/polkit-kde-authentication-agent-1 &

# Wallpaper
nitrogen --restore &

# Tray icons
optimus-manager-qt &
nm-applet &
pamac-tray &

# Startup sound
mplayer ~/Music/boot.wav &

