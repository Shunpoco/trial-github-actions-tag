#!/bin/bash

set -e

VERSION=${1:?}
IMAGE=${2:-example.io/example-image}

for file in "test-config.yaml" "README.md"
do
    sed -E -i \
        "s|${IMAGE}:(.*)|${IMAGE}:${VERSION}|" \
        $file
done
