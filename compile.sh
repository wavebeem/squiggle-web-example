#!/usr/bin/env bash
set -e

export PATH="$(npm bin):$PATH"

date

browserify --debug -c 'squiggle /dev/stdin' src/main.squiggle -o build/bundle.js

echo "Compilation done"
