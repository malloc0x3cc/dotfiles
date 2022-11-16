#!/bin/sh

case $1 in
	# Pulse Audio controls
	-volup)
		# XF86AudioRaiseVolume
		pactl set-sink-volume @DEFAULT_SINK@ +5%
		dunstify -t 1000 -r 1 "Volume up (+5%)" "$(pamixer --get-volume)"
	;;
	-voldown)
		# XF86AudioLowerVolume
        	pactl set-sink-volume @DEFAULT_SINK@ -5%
		dunstify -t 1000 -r 1 "Volume down (-5%)" "$(pamixer --get-volume)"
	;;
	-volmute)
		# XF86AudioMute
        	pactl set-sink-mute @DEFAULT_SINK@ toggle
		dunstify -t 1000 -r 1 "Volume muted (0%)" "$(pamixer --get-mute)"
	;;
	-micmute)
		# XF86AudioMicMute
        	pactl set-source-mute @DEFAULT_SOURCE@ toggle
		dunstify -t 1000 -r 1 "Mic mute" "$(pamixer --get-mute)"
	;;

	# Media player controls
	-mplay)
		# XF86AudioPlay
        	playerctl play
		dunstify -t 1000 -r 1 "Play"
	;;
	-mpause)
		# XF86AudioPause
        	playerctl pause
		dunstify -t 1000 -r 1 "Pause"
	;;
	-mnext)
		# XF86AudioNext
        	playerctl next
		dunstify -t 1000 -r 1 "Next"
	;;
	-mprev)
		# XF86AudioPrev
        	playerctl previous
		dunstify -t 1000 -r 1 "Previous"
	;;

	# Screen brightness controls
	-brightup)
		# XF86MonBrightnessUp
        	xbacklight -inc 10
		dunstify -t 1000 -r 1 "Brightness up"
	;;
	-brightdown)
		# XF86MonBrightnessDown
        	xbacklight -dec 10
		dunstify -t 1000 -r 1 "Brightness down"
	;;
esac
