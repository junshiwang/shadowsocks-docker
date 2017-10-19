#!/bin/bash
if [ -z "$SSPASSWORD" ]; then
    echo >&2 '  i need a SSPASSWORD'
    exit 1
fi
echo '{ "server":"0.0.0.0", "server_port":10000, "local_port":1080, "password":"'$SSPASSWORD'", "timeout":600, "method":"'$SSMETHOD'" }' > config.json
ssserver