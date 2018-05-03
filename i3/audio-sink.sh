#!/usr/bin/env bash
SINK=$(pactl list sinks | grep 'Name:')
# SINK=$(pacmd list-sinks | grep 'name:')
DEV=bluez_sink
# DEV=bluez

if `echo ${SINK} | grep "${DEV}" 1>/dev/null 2>&1`; then
    # echo $(pacmd list-sinks | grep 'card:' | grep 'bluez' | awk '{print $2}')
    echo $(pactl list sinks | grep 'Name: bluez_sink' -B 3 | grep '#' | awk '{print $2}' | sed 's/#//')
else
    echo "1"
fi
