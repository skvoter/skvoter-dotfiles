#!/bin/sh
wget -q --tries=10 --timeout=1 --spider http://ipinfo.io/ip
if [[ $? -eq 0 ]]; then
    a="  "
    b="$(curl -s https://ipinfo.io/ip)"
    e="$a $b"
    echo $e
else
    a=" "
    b="$a Offline"
    echo $b
fi
