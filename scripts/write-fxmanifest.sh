#!/bin/sh

set -e

cd "$(dirname "$0")/.."

print_fxmanifest() {
    echo "fx_version 'cerulean'
game 'gta5'

ui_page 'html/index.html'

client_scripts {
	'client/**',
}

server_scripts {
  	'@oxmysql/lib/MySQL.lua',
	'server/**',
}

shared_scripts {
  	'@ox_lib/init.lua',
	'config/**',
}

files {"

    (cd build && find html -type f | sort | sed "s/^/    '/; s/$/',/")

    echo "}"
}

print_fxmanifest > build/fxmanifest.lua
