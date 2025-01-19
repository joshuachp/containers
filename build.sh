#!/usr/bin/env bash

# Build all the containers

set -exEuo pipefail

for file in **/build.sh; do
    if [[ $file == "build.sh" || ! -x $file ]]; then
        echo "skipping $file"
        continue
    fi

    pushd "$(dirname "$file")"

    ./build.sh

    popd
done
