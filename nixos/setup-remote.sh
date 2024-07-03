#!/usr/bin/env bash

set -exEuo pipefail

mkdir -p ~/.ssh
echo "$BUILDER_KEY" >>~/.ssh/id_ed25519
echo "$BUILDER_HOST_KEYS" >>~/.ssh/known_hosts
chmod -R 600 ~/.ssh

# Check the remote builder
nix store info --store "$BUILDERS"

echo "$BUILDERS" >>/etc/nix/machines
