#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
node --version
exec node server.js
