#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Unknown planet"
    exit 1
fi

declare -A planets=(
    ["Mercury"]=0
    ["Venus"]=0
    ["Earth"]=1
    ["Mars"]=2
    ["Jupiter"]=98
    ["Saturn"]=83
    ["Uranus"]=27
    ["Neptune"]=14
)

planet="$1"

if [[ -z "${planets[$planet]}" ]]; then
    echo "Неизвестная планета"
else
    # Вывод количества спутников
    echo "${planets[$planet]}"
fi
