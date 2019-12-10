#!/bin/sh

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar -r example &
	done
else
	polybar -r example &
fi
