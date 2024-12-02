#!/usr/bin/env sh

set -exu

# - Log queries
# - keep foreground
# - no resolv.conf
# - no hosts
# - listen
exec dnsmasq -q -k -R -h -a 0.0.0.0 "$@"
