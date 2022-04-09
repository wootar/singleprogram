#!/bin/sh
# Test script for github actions

./singleprogram &
netsurf about:blank &
sleep 8; ffmpeg -f x11grab -i ${DISPLAY} -frames:v 1 output.png 
sleep 1
killall -SIGKILL singleprogram
killall -SIGKILL netsurf || killall -SIGKILL netsurf; true
exit 0