#!/bin/sh

file="/home/yoshi/last.txt"

age=$(stat -c %Z $file)

now=$(date +%s)

howlong=$(echo "scale=4; ($now-$age)/86400" | bc -l)

howlongyear=$(echo "scale=4; ($now-$age)/86400/365*100" | bc -l)

echo "PowerLevel $howlong ($howlongyear % of year)"
