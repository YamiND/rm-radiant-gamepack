#!/bin/bash

if [ -z "$1" ]; then
    >&2 echo "Usage: $0 <path to RocketMinsta repository>"
    exit 1
fi

for n in $(find rocketminsta.game/data -iname '*.def'); do
    grep '/*QUAKED' $n | sed 's/\/\*QUAKED\ //' | sed 's/[\x20-\x7E]*[ ].*//'
done | sort -u > /tmp/__defined_ents

grep -wh -Ero 'spawnfunc_[a-zA-Z_0-9]+' "$1/qcsrc/server" | sort -u | sed -e 's/^spawnfunc_//' > /tmp/__defined_spawnfuncs

comm -1 -3 /tmp/__defined_ents /tmp/__defined_spawnfuncs
rm -f /tmp/__defined_spawnfuncs /tmp/__defined_ents
