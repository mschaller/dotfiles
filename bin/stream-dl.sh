#!/bin/bash

ERRCNT=0

while true;
do
    youtube-dl $1
    echo $?
    ERRCNT=$((ERRCNT+1))

    if [ $ERRCNT -eq "30" ];
    then
        break
    else
        sleep 20
    fi
done
