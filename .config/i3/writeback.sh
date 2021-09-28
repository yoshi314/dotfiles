#!/bin/sh
grep -e Dirty: /proc/meminfo | awk ' { print "Dirty: " $2 " " $3 } '
