#!/bin/sh

ID=$(xinput | grep "AT Translated" | sed "s/.*id=\([0-9]\+\).*/\1/g")
xinput float "$ID"
