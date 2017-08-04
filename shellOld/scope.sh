#!/bin/sh

myfunc() {
    echo "I was called as: $@"
    x=2
}

# main
echo "Script called with $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"
