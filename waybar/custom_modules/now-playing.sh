#! /usr/bin/env bash

title=$(playerctl metadata --format "{{ title }}" 2>/dev/null)

status=$(playerctl status 2>/dev/null)

case "$status" in

   "Playing")
    echo -n "(≧▽≦) | $title"
    ;;

   "Paused")
    echo -n "(OwO) | $title"
    ;;
   *)
    echo -n "(-ω-)"
    exit 0
    ;;
esac
