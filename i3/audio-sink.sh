#!/bin/bash
SINK=$(pacmd list-sinks | grep -e 'card:')
DEV=bluez

if `echo ${SINK} | grep "${DEV}" 1>/dev/null 2>&1`; then
    echo $(pacmd list-sinks | grep 'card:' | grep 'bluez' | awk '{print $2}')
else
    echo "1"
fi
