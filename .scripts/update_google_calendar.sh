#!/bin/sh

cd /tmp
rm -rf file
wget "https://intra.epitech.eu/auth-2415bff57bec90a871cff10e9d0728a610d689a3/planning/load?format=ical&location=FR,FR/PAR&onlymypromo=true&onlymymodule=true&semester=5" -O file
