#!/bin/sh
set -e
cd /home/pihost/Desktop
gnome-terminal -e ./pidemo2a.sh
sleep 5s
gnome-terminal -e ./pidemo2b.sh
sleep 5s
gnome-terminal -e ./pidemo2c.sh
