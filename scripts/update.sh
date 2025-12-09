#!/usr/bin/env bash

set -exEuo pipefail

pre-commit autoupdate

dprint config update
