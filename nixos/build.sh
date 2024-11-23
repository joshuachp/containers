#!/usr/bin/env bash

set -exEuo pipefail

git fetch --tags

nixos_tag="$(
    git tag |
        grep '^nixos-' |
        sed -e 's/^nixos-//' |
        sort -V |
        tail -n1
)"

docker buildx build \
    --builder=container \
    --platform=linux/amd64,linux/arm64 \
    -t "joshuachp/nixos:$nixos_tag" \
    -f Dockerfile \
    --push .
