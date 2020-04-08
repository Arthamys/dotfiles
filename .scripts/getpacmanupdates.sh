#!/bin/sh

# the `checkupdates` binary is in the pacman-contrib package
# Get number of available updates for pacman

UPDATE_COUNT=$(checkupdates | wc -l)
if [ "$UPDATE_COUNT" -gt 0 ]; then
  upd=' '$UPDATE_COUNT
  echo $upd
else
  echo ''
fi
