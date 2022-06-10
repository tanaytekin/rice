#!/bin/sh
icon_bg=#899da6
icon_fg=#031417
icon=

res_bg=#a9bdc7
res_fg=#0311417

interface=enp3s0

ip_addr=$(ifconfig $interface | head -2 | tail -1 | awk '{print $2}')
res=$(echo -n "$interface - $ip_addr")
echo -n "^b$icon_bg^^c$icon_fg^ $icon ^b$res_bg^^c$res_fg^ $res ^d^ "
