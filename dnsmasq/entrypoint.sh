#!/usr/bin/env sh

set -exu

dnsmasq --test

# - Log queries
# - keep foreground
# - no resolv.conf
# - no hosts
# - listen
exec dnsmasq -q -k -R -h "$@"
