#!/bin/bash

for LOOP in `ls`
do
    echo "Here is $LOOP:"
    cat $LOOP
    echo ""
done
