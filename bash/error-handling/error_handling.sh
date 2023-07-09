#!/usr/bin/env bash

main () {
  (( $# != 1 )) && echo "Usage: $0 <person>" && exit 1
  echo "Hello, $1"
}

main "$@"
