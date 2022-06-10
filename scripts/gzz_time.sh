#!/bin/sh
icon_bg=#CF5E4B
icon_fg=#031417
icon=

res_bg=#e16e59
res_fg=#0311417

res=$(date "+%d %b %Y - %H:%M")
echo -n "^b$icon_bg^^c$icon_fg^ $icon ^b$res_bg^^c$res_fg^ $res ^d^ "
