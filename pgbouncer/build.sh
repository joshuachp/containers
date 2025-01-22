#!/usr/bin/env bash

set -exEuo pipefail

git fetch --tags

tag="$(
    git tag |
        grep -v '^pgbouncer-' |
        sed -e 's/^pgbouncer-//' |
        sort -V |
        tail -n1
)"

docker buildx build \
    --builder=container \
    --platform=linux/amd64,linux/arm64 \
    -t "joshuachp/pgbouncer:$tag" \
    -f Dockerfile \
    --push .
