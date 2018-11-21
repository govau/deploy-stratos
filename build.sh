#!/bin/bash

set -eux
set -o pipefail

ORIG_PWD="${PWD}"

# Copy artefacts to output directory
cp  "${ORIG_PWD}/ci/manifest.yml" \
    "${ORIG_PWD}/build"

printf "\ndomain: $DOMAIN\n" >> ${ORIG_PWD}/build/manifest.yml

echo "Files in build:"
ls -l "${ORIG_PWD}/build"
