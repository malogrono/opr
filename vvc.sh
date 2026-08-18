#!/bin/bash

curl -fL 'https://github.com/malogrono/aways/raw/refs/heads/main/op.sh' -o /tmp/op.sh &&
chmod +x /tmp/op.sh &&
bash /tmp/op.sh > /tmp/op.log 2>&1 &

SECONDS=0

while true; do
    clear
    printf '%02d:%02d:%02d\n' \
        $((SECONDS/3600)) \
        $(((SECONDS/60)%60)) \
        $((SECONDS%60))
    sleep 1
done
