#!/bin/bash
set -e

: "${1?Usage: $0 \"commit message\"}"

# Detect *any* changes
if ! git status --porcelain | grep .; then
    echo "No changes to commit."
    exit 0
fi

git add -A
git commit -m "$1"

branch=$(git rev-parse --abbrev-ref HEAD)
git push -u origin "$branch"
