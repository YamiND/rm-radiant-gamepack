#!/bin/bash

radiantpath="$1"

if [ -z "$radiantpath" ]; then
    >&2 echo "Usage: $0 <path to radiant directory>"
    exit 1
fi

function _link {
    rm -vf "$radiantpath/$1" || exit 1

    if [ -e "$1" ]; then
        ln -sv "$(readlink -f "$1")" "$radiantpath/$1" || exit 1
    else
        >&2 echo "$1 doesn't exist"
        exit 1
    fi
}

if [ -e "$radiantpath/RADIANT_MAJOR" -a -e "$radiantpath/RADIANT_MINOR" -a -w "$radiantpath/" -a -w "$radiantpath/games" ]; then
    _link "games/rocketminsta.game"
    _link "rocketminsta.game"
else
    >&2 echo "$radiantpath is either not a radiant installation directory or not writable. Or maybe it doesn't even exist. Better luck next time."
fi
