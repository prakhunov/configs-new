#!/bin/sh
xrandr \
    --output DP-1-4 --mode 2560x1440 --rate 60 --pos 0x0 --rotate normal \
    --output DP-3 --off --output HDMI-1-4 --off --output HDMI-1-3 --off \
    --output HDMI-1-2 --off --output DVI-I-0 --off --output HDMI-0 --off --output DP-5 --off \
    --output DP-4 --mode 2560x1440 --rate 60 --pos 2560x0 --rotate normal --output DVI-I-1 --off \
    --output DP-2 --primary --mode 1920x1080 --pos 5120x360 --rate 240 --rotate normal \
    --output DP-1 --off --output DP-0 --off
