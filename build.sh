#!/usr/bin/env bash

# Build all the containers

set -exEuo pipefail

# Order of dependency
containers=(
    "dnsmasq"
    "nixos"
    "restic"
)

for dir in "${containers[@]}"; do
    pushd "$dir"

    ./build.sh

    popd
done
