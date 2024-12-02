#!/usr/bin/env sh

set -exu

# Log queries, keep foreground and no resolv.conf
exec dnsmasq -q -k -R "$@"
