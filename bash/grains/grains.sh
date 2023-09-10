#!/usr/bin/env bash

main () {
    nSquares=$1
    if [[ $nSquares == "total" ]]; then
        sum=0
        for i in $(seq 1 64); do
            sum=$(echo "$(main $i)+$sum" | bc | cat)
        done
        echo $sum && exit 0
    fi
    if (( nSquares < 1 || nSquares > 64 )); then
        echo "Error: invalid input" && exit 1
    fi
    echo "2^($nSquares-1)" | bc | cat
}

main "$@"
