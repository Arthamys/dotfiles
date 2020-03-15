#!/bin/bash

max_monitor_res=$(xrandr -q | grep -A1 -w connected | cut -d ' ' -f4 | tail -n 1)

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --output HDMI-1 --mode "$max_monitor_res" --rotate normal --right-of eDP-1
fi
