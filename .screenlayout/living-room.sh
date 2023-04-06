#!/bin/sh
xrandr --output eDP-1 --primary --mode 3840x2400 --pos 3350x1440 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --mode 2560x1440 --pos 3840x0 --rotate normal --output DP-3 --off --output DP-4 --off

systemctl --user start polybar@livingroomexternal

~/.fehbg
