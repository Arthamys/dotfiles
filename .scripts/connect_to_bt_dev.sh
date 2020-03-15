#!/usr/bin/bash

set -e

if [ $# -lt 1 ]; then
  echo "USAGE:"
  echo "$0 <device_name>"
  echo ""
  echo "available devices to choose from:"
  bluetoothctl -- paired-devices
  exit 1
fi

DEV_MAC_ADDR=$(bluetoothctl -- paired-devices | grep "$1" | cut -d ' ' -f2)

if [ -z DEV_MAC_ADDR ]; then
  echo "Could not find MAC address for device $1"
  echo "available devices to choose from: "
  bluetoothctl -- paired-devices
  exit 2
fi

bluetoothctl -- connect "$DEV_MAC_ADDR"
