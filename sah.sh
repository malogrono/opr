#!/bin/bash
bash /tmp/app.sh > /tmp/app.log 2>&1 &

SECONDS=0
while true; do
    clear
    printf '%02d:%02d:%02d\n' $((SECONDS/3600)) $(((SECONDS/60)%60)) $((SECONDS%60))
    sleep 1
done
