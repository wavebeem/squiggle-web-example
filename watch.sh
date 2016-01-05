#!/usr/bin/env bash
set -e

export PATH="$(npm bin):$PATH"

watchify \
    --debug \
    --extension=".sqg" \
    -t squiggle-browserify \
    src/main.sqg \
    -o build/bundle.js
