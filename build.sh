#!/bin/bash

set -eux
set -o pipefail

ORIG_PWD="${PWD}"

cp -R "${ORIG_PWD}/src" "${ORIG_PWD}/build/src"
cd "${ORIG_PWD}/build/src"
npm install
npm run prebuild-ui

# Copy artefacts to output directory
cp  "${ORIG_PWD}/ci/manifest.yml" \
    "${ORIG_PWD}/build"

printf "\ndomain: $DOMAIN\n" >> ${ORIG_PWD}/build/manifest.yml

echo "Files in build:"
ls -l "${ORIG_PWD}/build"
