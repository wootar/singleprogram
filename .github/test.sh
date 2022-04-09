#!/bin/sh
# Test script for github actions

./singleprogram &
st &
sleep 2; ffmpeg -f x11grab -i ${DISPLAY} -frames:v 1 output.png || exit 1
sleep 1
killall -SIGKILL singleprogram
killall -SIGKILL st || killall -SIGKILL stterm; true
exit 0