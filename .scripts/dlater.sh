#!/bin/sh

# Download a package later

ARGV=( "$@" )
#ARGV=("${ARGV[@]:1}")

if [ $# -lt 1 ]
then
  echo "Usage : $0 packages ..."
  exit 42
fi

mkdir -p "$HOME/.cache/dlater/"

for item in $ARGV
do
  pacman -Ss "$item"
  STATUS=$?
  if [ $STATUS -ne 0 ]
  then
    #
  fi
done

