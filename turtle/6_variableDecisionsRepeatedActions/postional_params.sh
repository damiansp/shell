#!/bin/bash

set -- hello "hi there" greetings
echo there are $# total args

for i in $*; do
    echo i is $i
done

for i in $@; do
    echo i is $i
done

for i in "$*"; do
    echo i is $i
done

for i in "$@"; do
    echo i is $i
done

shift
echo shifted - there are now $# args
for i in "$@"; do
    echo i is $i
done
