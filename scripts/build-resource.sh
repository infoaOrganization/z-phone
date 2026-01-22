#!/bin/sh

set -e

cd "$(dirname "$0")/.."

[ -d "html" ] || (echo "run scripts/build-web.sh first" && exit 1)

rm -rf build

mkdir -p build

cp -r client build/
cp -r server build/
cp -r config build/
cp -r html build/
cp -r stream build/
cp z-phone.sql build/
cp README.md build/

sh scripts/write-fxmanifest.sh
