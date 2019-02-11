#!/bin/bash
USER=nobody
PROGRAM=/usr/local/src/ServerStatus/server/sergate
CONFIG=/usr/local/src/ServerStatus/server/config.json
WEB=/usr/local/src/ServerStatus/web
PORT=8099
/sbin/runuser -s /bin/bash -l $USER -c "$PROGRAM -c $CONFIG -d $WEB -p $PORT > /var/log/sergate" 2>&1 &
