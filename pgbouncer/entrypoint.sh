#!/usr/bin/env sh

set -exu

cmd="${*:-pgbouncer /etc/pgbouncer/config.ini}"

exec $cmd
