#!/bin/sh

xbacklight $1
brightnessLevel=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
maxBrightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

brightnessLevel=$(echo "$brightnessLevel * 15 / $maxBrightness" | bc)

echo $brightnessLevel
echo $maxBrightness
color1="#F7E599'>"
color2="#F7E081'>"
color2="#F7DB68'>"
color3="#F7DB68'>"
color4="#F5CF38'>"
color5="#F5CC27'>"
color6="#F7CA16'>"
color7="#FACB0F'>"
color8="#F7C600'>"
col="<span color='"
end="</span>"

NID=""

if [ -f /tmp/brightness ]
then
  NID="-r $(cat /tmp/brightness)"
fi

# Red swag: #900C3F

SIGN="\uf057"

case $brightnessLevel in
  0)      notify-send -p $NID "Brightness:" "$col$color1σ$endσσσσσσσσσσσσσσσ" > /tmp/brightness;;
  1)      notify-send -p $NID "Brightness:" "$col$color1σσ$endσσσσσσσσσσσσσσ" > /tmp/brightness;;
  2)      notify-send -p $NID "Brightness:" "$col$color2σσσ$endσσσσσσσσσσσσσ" > /tmp/brightness;;
  3)      notify-send -p $NID "Brightness:" "$col$color2σσσσ$endσσσσσσσσσσσσ" > /tmp/brightness;;
  4)      notify-send -p $NID "Brightness:" "$col$color3σσσσσ$endσσσσσσσσσσσ" > /tmp/brightness;;
  5)      notify-send -p $NID "Brightness:" "$col$color3σσσσσσ$endσσσσσσσσσσ" > /tmp/brightness;;
  6)      notify-send -p $NID "Brightness:" "$col$color4σσσσσσσ$endσσσσσσσσσ" > /tmp/brightness;;
  7)      notify-send -p $NID "Brightness:" "$col$color4σσσσσσσσ$endσσσσσσσσ" > /tmp/brightness;;
  8)      notify-send -p $NID "Brightness:" "$col$color5σσσσσσσσσ$endσσσσσσσ" > /tmp/brightness;;
  9)      notify-send -p $NID "Brightness:" "$col$color5σσσσσσσσσσ$endσσσσσσ" > /tmp/brightness;;
  10)     notify-send -p $NID "Brightness:" "$col$color6σσσσσσσσσσσ$endσσσσσ" > /tmp/brightness;;
  11)     notify-send -p $NID "Brightness:" "$col$color6σσσσσσσσσσσσ$endσσσσ" > /tmp/brightness;;
  12)     notify-send -p $NID "Brightness:" "$col$color7σσσσσσσσσσσσσ$endσσσ" > /tmp/brightness;;
  13)     notify-send -p $NID "Brightness:" "$col$color7σσσσσσσσσσσσσσ$endσσ" > /tmp/brightness;;
  14)     notify-send -p $NID "Brightness:" "$col$color8σσσσσσσσσσσσσσσ$endσ" > /tmp/brightness;;
  15)     notify-send -p $NID "Brightness:" "$col$color8σσσσσσσσσσσσσσσσ$end" > /tmp/brightness;;
esac
