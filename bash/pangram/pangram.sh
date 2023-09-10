#!/usr/bin/env bash

main () {
    sentence=${1,,}
    for letter in {a..z}; do
        [[ ! $sentence =~ $letter ]] && echo "false" && exit 0
    done
    echo "true"
}

main "$@"
