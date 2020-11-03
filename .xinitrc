#!/bin/sh

setxkbmap -option caps:escape
setxkbmap -option compose:rctrl
setxkbmap -option terminate:ctrl_alt_bksp

sxhkd -c "/home/aidan/.config/berry/sxhkdrc" &
xsetroot -cursor_name left_ptr &
/home/aidan/Builds/sowm-dots/lemonbar/simplelemon.sh &
sh /home/aidan/.config/berry/autostart &
cat /home/aidan/.cache/wal/sequences &
sh /home/aidan/.cache/wal/berrycolor &
picom --config /home/aidan/.config/picom/picom.conf &

exec berry
