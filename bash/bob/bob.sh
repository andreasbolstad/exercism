#!/usr/bin/env bash

main () {
  local -r statement="$(echo "$1" | tr -d "[:space:]")"
  if silence; then
    echo "Fine. Be that way!"
  elif yelling && question; then
    echo "Calm down, I know what I'm doing!"
  elif yelling; then
    echo "Whoa, chill out!"
  elif question; then
    echo "Sure."
  else
    echo "Whatever."
  fi
}

silence () {
  [[ -z $statement ]]
}

yelling () {
  [[ "${statement^^}" == "$statement" && "${statement,,}" != "$statement" ]]
}

question () {
  [[ "$statement" =~ \?$ ]]
}

main "$1"
