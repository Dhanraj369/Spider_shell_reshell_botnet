#!/bin/bash

while ! ping -c 1 -W 1 8.8.8.8 > /dev/null 2>&1; do
    sleep 1
done
