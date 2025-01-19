#!/usr/bin/env bash

set -exEuo pipefail

git fetch --tags

tag="$(
    git tag |
        grep -v '^restic-pg-' |
        grep '^restic-' |
        sed -e 's/^restic-//' |
        sort -V |
        tail -n1
)"

docker buildx build \
    --builder=container \
    --platform=linux/amd64,linux/arm64 \
    -t "joshuachp/restic:$tag" \
    -f Dockerfile \
    --push .
