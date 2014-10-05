#!/bin/sh

# add 'server_tokens off' to nginx.conf
# to hide server version
# TIPP: check with `curl -I http://xxxx`

sed -i '/http {/a \
    server_tokens off;' /etc/nginx/nginx.conf

# save default config
#
cp -r /etc/nginx /etc/nginx.default
