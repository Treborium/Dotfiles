#!/usr/bin/env bash

NAME=main

killall polybar

if type "xrandr"; then
  for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=${monitor} polybar --reload ${NAME}&
  done
else
  polybar --reload ${NAME} &
fi