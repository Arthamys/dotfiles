#!/bin/sh
bspc monitor -f next
eval $(xdotool getmouselocation --shell)
if [ $X -ge 1920 ]
then
  X=$(echo "$X-1920" | bc)
else
  X=$(echo "$X+1920" | bc)
fi
xdotool mousemove $X $Y
