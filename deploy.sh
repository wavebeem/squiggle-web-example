#!/usr/bin/env bash
set -e

# destination="s3://dev.mockbrian.com/squiggle-game-example"
destination="s3://mockbrian.com/sqg-game"

s3() {
    local cmd="$1"
    shift

    s3cmd "$cmd" \
        --no-mime-magic \
        --acl-public \
        --no-progress \
        "$@"
}

s3 put "index.html" "$destination/index.html"
s3 sync "build/" "$destination/build/"
