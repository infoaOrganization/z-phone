#!/bin/sh

set -e

cd "$(dirname "$0")/.."

sh scripts/build-web.sh
sh scripts/build-resource.sh
