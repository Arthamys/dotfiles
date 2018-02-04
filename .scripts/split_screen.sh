#!/bin/sh

MONITORS=$(xrandr | grep " connected" | awk '{print $1}')
for i in $MONITORS
do
  if [ "$i" = "eDP1" ]
  then
    continue
  fi
  MODE=$(xrandr  | grep "^$i connected" -A1 | sed -n 2p | awk '{print $1}')
  xrandr --output "$i" --mode "$MODE" --primary --left-of eDP1
done

