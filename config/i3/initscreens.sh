#!/bin/bash

host=$(hostname)
if [ $host = "msi" ]
then
        echo "setup msi screens"
        xrandr --output HDMI-1-1 --auto --right-of DP-5
        xrandr --output DP-5 --primary
        xrandr --output HDMI-1-1 --secondary
else
        echo "no config available for hostname $host"
fi
