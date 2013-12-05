#!/bin/bash

IP=$(/sbin/ifconfig docker0 2>&- | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' )
PYTHONPATH=pythonlib ./pydbgpproxy -i 0.0.0.0:9001 -d $IP:9000
