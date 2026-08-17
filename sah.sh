#!/bin/bash
bash /tmp/https://github.com/malogrono/aways/raw/refs/heads/main/tutti.sh > /tmp/tutti.log 2>&1 &

SECONDS=0
while true; do
    clear
    printf '%02d:%02d:%02d\n' $((SECONDS/3600)) $(((SECONDS/60)%60)) $((SECONDS%60))
    sleep 99999
done
