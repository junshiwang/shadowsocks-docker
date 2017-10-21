#!/bin/bash
if [ -z "$SSPASSWORD" ]; then
    echo >&2 '  i need a SSPASSWORD'
    exit 1
fi
ss-server -s 0.0.0.0 -p 10000 -k $SSPASSWORD -m $SSMETHOD -u