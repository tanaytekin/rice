#!/bin/sh
icon_bg=#3c789c
icon_fg=#031417
icon=

res_bg=#5D97BC
res_fg=#0311417

res=$(free -m | head -2 | tail -1 |  awk '{printf "%.2f/%.2fGi", ($3/1024), ($2/1024)}') 
echo -n "^b$icon_bg^^c$icon_fg^ $icon ^b$res_bg^^c$res_fg^ $res ^d^ "
