#!/bin/bash

set -e

## change output of `pacman -Qe` to be `head "-" tail "*"`
## list all files in cache except those that match this list
## and delete them
latest_versions=$(pacman -Qe | perl -pe 's|(.*?) (.*?)\n|\1-\2-\*\||')
cd /var/cache/pacman/pkg
outdated_versions=$(exa -I "$latest_versions")
sudo rm $outdated_versions
