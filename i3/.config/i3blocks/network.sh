#!/usr/bin/env bash

STATE=$(nmcli -t -f WIFI g 2>/dev/null)

if nmcli -t -f DEVICE,STATE d | grep -q "connected"; then
    echo "Online"
    echo "Online"
    echo "#A9B665"
else
    echo "Offline"
    echo "Offline"
    echo "#EA6962"
fi

