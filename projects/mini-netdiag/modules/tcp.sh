#!/bin/bash

PORT=443

nc -z $1 $PORT >/dev/null 2>&1

if [ $? -eq 0 ]
then
  echo "TCP $PORT: OPEN"
else
  echo "TCP $PORT: CLOSED"
fi