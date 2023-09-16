az=({a..z})
za=({z..a})

main() {
    mode=$1
    word=$2
    if [[ $mode == "encode" ]]; then
        encode "$word"
    elif [[ $mode == "decode" ]]; then
        decode "$word"
    else
        echo "Arg #1 must be either encode or decode"
        exit 1
    fi
}

encode() {
    _word=${1,,}
    word=${_word//[^[:alnum:]]/}
    res1=$(flip "$word")
    res2=""
    for (( i=0; i<${#res1}; i+=5 ))
    do
        res2+="${res1:i:5} "
    done
    echo "${res2:0:-1}"
}

decode() {
    word=${1//[[:space:]]/}
    flip "$word"
}

flip() {
    word=$1
    res=""
    for ((i=0; i<${#word}; i++))
    do
        l=${word:i:1}
        for ((j = 0; j < ${#az[@]}; j++))
        do
            if [[ $l == "${az[$j]}" ]]; then
                res+="${za[$j]}"
            fi
        done
        if [[ $l =~ [1-9] ]]; then
            res+=$l
        fi
    done
    echo "$res"
}

main "$@"
