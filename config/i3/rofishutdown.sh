#!/bin/bash

result=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i -p "Exit")

if [[ $result = "Logout" ]]; then
    i3-msg exit
elif [[ $result = "Shutdown" ]]; then
    systemctl poweroff
elif [[ $result = "Reboot" ]]; then
    systemctl reboot
elif [[ $result = "Suspend" ]]; then
    systemctl suspend
elif [[ $result = "Hibernate" ]]; then
    systemctl hibernate
elif [[ $result = "Hybrid-sleep" ]]; then
    systemctl hybrid-sleep
elif [[ $result = "Suspend-then-hibernate" ]]; then
    systemctl suspend-then-hibernate
fi

