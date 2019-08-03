#!/bin/bash

if [ ! -f /etc/sysctl.d/50-unprivileged_userns_clone.conf ]
then
    echo "kernel.unprivileged_userns_clone=1" > /etc/sysctl.d/50-unprivileged_userns_clone.conf
    echo "/etc/sysctl.d/50-unprivileged_userns_clone.conf created"
else
    echo "sysctl config-file already exists"
fi


if [ ! -f /etc/subuid ]
then
    echo "kaputtnik:100000:65536" >> /etc/subuid; 
    echo "/etc/subuid created"
else
    echo "/etc/subuid already exists - todo: ask to overwrite"
fi

if [ ! -f /etc/subgid ]
then
    echo "kaputtnik:100000:65536" >> /etc/subgid; 
    echo "/etc/subgid created"
else
    echo "/etc/subgid already exists - todo: ask to overwrite"
fi

