#!/usr/bin/env bash

main () {
  hd=0
  (( $# != 2 )) && echo "Usage: hamming.sh <string1> <string2>" && exit 1
  l=$1
  r=$2
  (( ${#l} != ${#r} )) && echo "strands must be of equal length" && exit 1
  for (( i = 0;  $i < ${#l};  i++ )); do
    [[ "${l:$i:1}" != "${r:$i:1}" ]] && (( hd+=1 ))
  done
  echo $hd
}

main "$@"
