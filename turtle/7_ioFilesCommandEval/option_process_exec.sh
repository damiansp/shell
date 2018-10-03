#!/bin/bash

while [ $# -gt 1 ]; do
    case $1 in
        -f) ;; # code for -f
        -q) ;; # ''   ''  -q
        # ...
        *)  break;;
    esac
    shift
done

# Then execute whatever file
exec real-app -q "$qargs" -f "$fargs" "$@"
echo real-app failed, etc etc... 1>&2
