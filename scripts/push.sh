#!/usr/bin/env bash

set -exEuo pipefail

# Trap -e errors
trap 'echo "Exit status $? at line $LINENO from: $BASH_COMMAND"' ERR

name=$1
tag=$2

manifest="localhost/joshuachp/$name:$tag"
remote="docker://docker.io/joshuachp/$name:$tag"

podman manifest push "$manifest" "$remote"
