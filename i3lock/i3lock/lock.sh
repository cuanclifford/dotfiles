#!/bin/bash

ICON=$HOME/.config/i3lock/icon.png
BACKGROUND=/tmp/screenlock.png
RES=1920x1080


ffmpeg -loglevel panic -f x11grab -video_size $RES -y -i $DISPLAY -i $ICON -filter_complex "boxblur=5:2,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $BACKGROUND
i3lock -u -i $BACKGROUND
