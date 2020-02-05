#!/bin/bash
cd "$(dirname "$0")"
IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)

echo " "
echo " "
echo "    -- Developer Environment running on http://${IP}:8000 --"
echo " "
echo " "

php -S ${IP}:8000 & sudo stunnel3 -d 443 -r 8080
#php -S ${IP}:8000