#!/bin/bash

wallpaper_directory=/home/prakhunov/Pictures/wallpapers
interval=60 # in seconds
while true; do
  feh --recursive --randomize --bg-center ${wallpaper_directory}
  sleep "$interval"
done
