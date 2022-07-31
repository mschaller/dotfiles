#!/bin/bash

host=$(cat /etc/hostname)
if [ $host = "msi" ]
then
        echo "setup msi screens"
        xrandr --output HDMI-0 --auto --primary 
        xrandr --output DP-1 --auto --right-of HDMI-0
#        xrandr --output HDMI-1 --primary
#        xrandr --output DP-1 --secondary
else
        echo "no config available for hostname $host"
fi
