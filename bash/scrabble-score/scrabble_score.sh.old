#!/usr/bin/env bash

main () {
  declare -A letterToPoint
  letterToPoint[A]=1
  letterToPoint[E]=1
  letterToPoint[I]=1
  letterToPoint[O]=1
  letterToPoint[U]=1
  letterToPoint[L]=1
  letterToPoint[N]=1
  letterToPoint[R]=1
  letterToPoint[S]=1
  letterToPoint[T]=1
  letterToPoint[D]=2
  letterToPoint[G]=2
  letterToPoint[B]=3
  letterToPoint[C]=3
  letterToPoint[M]=3
  letterToPoint[P]=3
  letterToPoint[F]=4
  letterToPoint[H]=4
  letterToPoint[V]=4
  letterToPoint[W]=4
  letterToPoint[Y]=4
  letterToPoint[K]=5
  letterToPoint[J]=8
  letterToPoint[X]=8
  letterToPoint[Q]=10
  letterToPoint[Z]=10

  word=${1^^}
  declare -i sum=0
  for (( i=0; i<${#word}; i++ )); do
    l=${word:$i:1}
    sum+=${letterToPoint[$l]}
  done

  echo $sum
}

main "$@"
