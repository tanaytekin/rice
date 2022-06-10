#!/bin/sh

case "$1" in
	up) pamixer -i 5 ;;
	down) pamixer -d 5 ;;
	toggle) pamixer -t ;;
esac >/dev/null

pkill -RTMIN+1 dwmblocks
