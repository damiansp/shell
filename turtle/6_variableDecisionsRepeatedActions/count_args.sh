#!/bin/bash

# $# returns the total number of args passed
# $* or $@ represents all args at once
# "$*" represents all args as a single string, same as "$1 $2 ..."
# "$@" reprsents as individ strings, "$1" "$2" ...

printf "The arguments were %s\n" "$*"

while [ $# != 0 ]; do
    echo $1
    shift 
done
