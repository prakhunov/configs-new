#!/bin/sh

file1=$(mktemp --tmpdir i3lock-wrapper-XXXXXXXXXX.png)
file2=$(mktemp --tmpdir i3lock-wrapper-XXXXXXXXXX.png)

scrot -d0 "$file1"
convert "$file1" -blur 0x8 "$file2"
i3lock -i "$file2" -n
rm "$file1" "$file2"
