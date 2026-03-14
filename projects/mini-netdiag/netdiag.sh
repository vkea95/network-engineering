#!/bin/bash

TARGET=$1

echo "===== Network Diagnostic ====="

./modules/dns.sh $TARGET
./modules/tcp.sh $TARGET
./modules/http.sh $TARGET
./modules/latency.sh $TARGET