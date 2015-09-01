#!/usr/bin/env bash
export PATH="$(npm bin):$PATH"

browserify -c 'squiggle /dev/stdin' src/main.squiggle -o build/bundle.js
