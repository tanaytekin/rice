#!/bin/sh
icon_bg=#8e5649
icon_fg=#031417

res_bg=#A46A5C
res_fg=#0311417


res=$(pamixer --get-volume-human)

if [ "$res" = "muted" ]; then
	icon=ﱝ
	volume=0
else
	volume=$(pamixer --get-volume)
	if [ $volume -lt 30 ]; then
		icon=奄
	elif [ $volume -lt 60 ]; then
		icon=奔
	else
		icon=墳
	fi;

fi;
echo -n "^b$icon_bg^^c$icon_fg^ $icon ^b$res_bg^^c$res_fg^ $volume% ^d^ "
