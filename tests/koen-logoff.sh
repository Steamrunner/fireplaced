#!/usr/bin/env bash


# loginctl terminate-user koen
echo $XDG_SEAT_PATH
export XDG_SEAT_PATH="/org/freedesktop/DisplayManager/Seat0"
echo $XDG_SEAT_PATH

dm-tool lock
