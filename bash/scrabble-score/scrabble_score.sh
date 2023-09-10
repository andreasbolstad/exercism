#!/usr/bin/env bash

main () {
    word="$(echo "${1^^}" | grep -o .)"
    declare -i sum=0
    for letter in $word; do
        case $letter in
            [AEIOULNRST]) sum+=1  ;;
            [DG])         sum+=2  ;;
            [BCMP])       sum+=3  ;;
            [FHVWY])      sum+=4  ;;
            [K])          sum+=5  ;;
            [JX])         sum+=8  ;;
            [QZ])         sum+=10 ;;
        esac
    done
    echo $sum
}

main "$@"
