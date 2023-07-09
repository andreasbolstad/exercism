#!/usr/bin/env bash

main() {
  dashless="${*//-/ }"
  alnumAndSpaceOnly="${dashless//[^[:alnum:][:space:]]/}"
  acronym=""
  for word in $alnumAndSpaceOnly; do
    acronym+=${word:0:1}
  done
  echo "${acronym^^}"
}

main "$@"
