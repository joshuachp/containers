#!/usr/bin/env bash

set -exEuo pipefail

# Trap -e errors
trap 'echo "Exit status $? at line $LINENO from: $BASH_COMMAND"' ERR

file=$1

rg 'FROM [^:]+:(.+)' --max-count 1 --only-matching --replace '$1' "$file"
