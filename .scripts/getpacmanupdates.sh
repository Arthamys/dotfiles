#!/bin/sh

# the `checkupdates` binary is in the pacman-contrib package
# Get number of available updates for pacman

UPDATE_COUNT=$(checkupdates 2> /dev/null | wc -l)
upd=' '$UPDATE_COUNT
echo $upd
