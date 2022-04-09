#!/bin/sh
# Test script for github actions

./singleprogram &
netsurf http://example.com &
sleep 8; ffmpeg -f x11grab -i ${DISPLAY} -frames:v 1 output.png || killall -SIGKILL singleprogram; killall -SIGKILL netsurf; exit 1
sleep 1
killall -SIGKILL singleprogram
killall -SIGKILL netsurf || killall -SIGKILL netsurf; true
exit 0