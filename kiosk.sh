#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

# Run Chromium and open tabs
firefox --window-size=1920,1080 --kiosk --window-position=0,0 http://localhost/camera?booth=booth1 &

cd /home/psm/uploadserver; python3 -m uploadserver --directory=/home/psm/booth/ &
