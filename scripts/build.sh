#!/usr/bin/env bash

set -exEuo pipefail

# Trap -e errors
trap 'echo "Exit status $? at line $LINENO from: $BASH_COMMAND"' ERR

dir=$1
tag=$2

podman build \
    --tag "$tag" \
    --platform=linux/amd64,linux/arm64 \
    --file "$dir/Containerfile" \
    "$dir"
