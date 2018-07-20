#!/bin/bash
SINK=$(pactl list sinks | grep -B 1 RUNNING | head -n 1 | awk '{ print $NF }' | sed 's/#//')

pactl set-sink-volume $SINK +5%
