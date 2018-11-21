#!/usr/bin/bash

set -e
set -x

# check if dockerd is running
pgrep -f dockerd > /dev/null

DANGLING=$(docker volume ls -qf dangling=true)

docker volume rm $DANGLING
