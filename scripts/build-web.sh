#!/bin/sh

set -e

cd "$(dirname "$0")/../web"

npm install
npm run build
