#!/bin/sh

while [ 42 ];
do
  notify-send -p "$(timeout 0.011 cat -A /dev/urandom | head -c 10)"
done
