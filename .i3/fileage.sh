#!/bin/sh

file="/home/yoshi/last.txt"

age=$(stat -c %Y $file)
now=$(date +%s)
howlong=$(echo "scale=4; ($now-$age)/86400" | bc -l)
howlongyear=$(echo "scale=4; ($now-$age)/86400/365*100" | bc -l)

msg="P $howlong ($howlongyear %)"

file2="/home/yoshi/lastf.txt"
age=$(stat -c %Y $file2)
now=$(date +%s)
howlong=$(echo "scale=4; ($now-$age)/86400" | bc -l)
howlongyear=$(echo "scale=4; ($now-$age)/86400/365*100" | bc -l)



echo "$msg,F $howlong ($howlongyear %)"
