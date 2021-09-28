#!/bin/sh

device=$(udiskie-info -a -o "{device_file} {ui_label}" | rofi -dmenu -theme android_notification  | cut -d' ' -f1)

if [ -n "$device" ] ; then
    udisksctl unmount -b ${device}
fi
