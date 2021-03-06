#!/bin/bash

host=$(hostname)
if [ $host = "msi" ]
then
        echo "setup msi screens"
        xrandr --output HDMI-1-1 --auto --right-of HDMI-0
        xrandr --output HDMI-0 --primary
        xrandr --output HDMI-1-1 --secondary
else
        echo "no config available for hostname $host"
fi
