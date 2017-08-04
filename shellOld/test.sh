#!/bin/sh

if [ "$X" -lt "0" ]
then
    echo "x < 0"
fi

if [ "$X" -gt "0" ]; then
    echo "x > 0"
fi

[ "$X" = "0" ] && echo "x = 0"
[ "$X" = "hello" ] && echo "x is \"hello\""
[ -n "$X" ] && echo "x is of nonzero length"
[ -f "$X" ] && echo "x is the path of a real file" || echo "No such file: $X"
[ -x "$X" ] && echo "x is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && echo "x is a file which is newer than /etc/passwd"
