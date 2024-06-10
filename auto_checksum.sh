#!/bin/bash
function checksha256() {
    #checksha256 file checksum
    local file="$1"
    local checksum="$2"
    if [[ $(shasum -a 256 file | cut -f 1 -d' ') == checksum ]]; then
        echo Match
    else
        echo No match
    fi
}
 
checksha256 "$1" "$2"

