#!/bin/bash

while true; do
    if ! ping -c 1 -W 1 8.8.8.8 > /dev/null 2>&1; then
        sleep 1
    else
        sleep 20
    fi
done
