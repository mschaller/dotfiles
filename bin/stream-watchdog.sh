#!/usr/bin/env bash

ID=($(date +%s))
TMPFILE="/tmp/stream-watchdog-$ID"
PIDS=($(pidof ffmpeg))

for i in "${PIDS[@]}"
do
    printf "PID=%d " $i

    timeout 7 strace -p $i -o $TMPFILE &>/dev/null
    TOUTS=($(cat $TMPFILE | grep Timeout | wc -l))
    COUNT=($(cat $TMPFILE | wc -l))
    PRCNT=$(($TOUTS*100/$COUNT))
    
    printf "timeouts=%d (%d/%d) -> " $PRCNT $TOUTS $COUNT

    if [ $PRCNT -gt 25 ];
    then
        printf "stalled; kill process"
        kill -9 $i
    else
        printf "running"
    fi

    printf "\n"
done
