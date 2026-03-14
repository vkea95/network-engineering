#!/bin/bash

IP=$(dig +short $1 | head -n 1)

if [ -z "$IP" ]
then
  echo "DNS: FAIL"
else
  echo "DNS: OK ($IP)"
fi