#!/usr/bin/env bash

set -exEuo pipefail

# Trap -e errors
trap 'echo "Exit status $? at line $LINENO from: $BASH_COMMAND"' ERR

name=$1
tag=$2

manifest="localhost/joshuachp/$name:$tag"
tag="docker.io/joshuachp/$name:$tag"
dir="./$name"

if ! podman manifest exists "$manifest"; then
    podman manifest create "$manifest"
fi

podman build \
    --tag "$tag" \
    --manifest "$manifest" \
    --platform=linux/amd64,linux/arm64 \
    --file "$dir/Containerfile" \
    "$dir"
