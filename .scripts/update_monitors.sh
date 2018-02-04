#!/bin/sh

SP=1
MONITORS=$(xrandr | grep " connected" | awk '{print $1}')
for i in $MONITORS;
do
  bspc monitor "$i" -d $((SP)) $((SP+1)) $((SP+2)) $((SP+3)) $((SP+4))
  SP=$((SP+5))
done

