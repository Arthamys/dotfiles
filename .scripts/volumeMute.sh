#!/bin/bash
SINK=$(pactl list sinks | head -n 1 | awk '{ print $NF }'  |sed 's/#//')

pactl set-sink-mute $SINK toggle
