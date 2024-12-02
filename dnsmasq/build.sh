#!/usr/bin/env bash

set -exEuo pipefail

git fetch --tags

tag="$(
    git tag |
        grep '^dnsmasq-' |
        sed -e 's/^dnsmasq-//' |
        sort -V |
        tail -n1
)"

docker buildx build \
    --builder=container \
    --platform=linux/amd64,linux/arm64 \
    -t "joshuachp/dnsmasq:$tag" \
    -f Dockerfile \
    --push .
