#!/bin/sh

if [ $1 -gt 0 ]; then
  # light -A increases brightness
  light -A $1
else
  # light -U decreases brightness
  # Only accepts positive numbers, so invert input
  light -U $(echo "$1 * -1" | bc)
fi
