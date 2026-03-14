#!/bin/bash

STATUS=$(curl -o /dev/null -s -w "%{http_code}" https://$1)

echo "HTTP status: $STATUS"