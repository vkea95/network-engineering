#!/bin/bash

LATENCY=$(ping -c 3 $1 | tail -1 | awk -F '/' '{print $5}')

echo "Latency avg: $LATENCY ms"