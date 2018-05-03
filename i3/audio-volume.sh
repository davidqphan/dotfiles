#!/usr/bin/env bash
CARD=alsa_output
ANALOG=analog-stereo
BT=bluez_sink
SINK=$(pactl list sinks | grep 'Name:')

if `echo ${SINK} | grep "${BT}" 1>/dev/null 2>&1`; then
    echo $(pactl list sinks | grep "Name: ${BT}" -A 7 | tail -1 | awk '{print $5}')
else
    echo $(pactl list sinks | grep "Name: ${CARD}" -A 7 | grep ${ANALOG} -A 7 | tail -1 | awk '{print $5}')
fi

