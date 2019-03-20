#!/bin/sh
xrandr \
    --output DP-1-4 --mode 2560x1440 --rate 60 --pos 0x0 --rotate normal `#left monitor` \
    --output DP-3 --off --output HDMI-1-4 --off --output HDMI-1-3 --off --output HDMI-1-2 --off \
    --output DVI-I-0 --off --output HDMI-0 --off --output DP-5 --off \
    --output DP-4 --primary --mode 3440x1440 --pos 2560x0 --rate 100 --rotate normal `#middle monitor` \
    --output DVI-I-1 --off \
    --output DP-2 --mode 1920x1080 --rate 240 --pos 6000x0 --rotate normal `#right monitor` \
    --output DP-1 --off --output DP-0 --off
