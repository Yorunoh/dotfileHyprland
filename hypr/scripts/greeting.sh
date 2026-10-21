# this is greeting display line for hyprlock

#!/usr/bin/env bash

if ping -q -c 1 -W 2 8.8.8.8 >/dev/null 2>&1; then
	echo "<b>Feels like<big> $(curl -s 'wttr.in?format=%t' | tr -d '+') </big></b>"
else
	echo "<b>Can't feel anything yet</b>"
fi
