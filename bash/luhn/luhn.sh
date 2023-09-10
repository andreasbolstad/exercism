#!/usr/bin/env bash

main () {
    n=$1
    if [[ "${n//[[:digit:] ]/}" ]]; then
        echo "false"
        exit 0
    fi
    n=${n//[^[:digit:]]/}
    if [[ ${#n} -lt 2 ]]; then
        echo "false"
        exit 0
    fi
    l="${#n}"
    m=""
    for i in $(echo "$n" | grep -o .); do
        (( l=l-1))
        if (( l % 2 == 0 )); then
            m="${m}${i}"
        else
            k=$((i*2))
            if (( k > 9 )); then
                m="$m$((k-9))"
            else
                m="$m$k"
            fi
        fi
    done
    declare -i sum=0
    for j in $(echo "$m" | grep -o .); do
        ((sum+=j))
    done
    if ((sum % 10 == 0)); then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
