#!/bin/bash

# Run this script in display 0 - the monitor
export DISPLAY=:0

# Hide the mouse from the display
unclutter &

# Run Chromium and open tabs
firefox --window-size=1920,1080 --kiosk --window-position=0,0 http://localhost/camera?booth=booth1 &

cd /home/psm/uploadserver; python3 -m uploadserver --directory=/home/psm/booth/ &

#*/5 * * * * rm /home/psm/booth/*

#nginx.conf /etc/nginx/nginx.conf

#/usr/share/nginx/html

#git clone https://github.com/yashgautami/psm-booth-dist.git
