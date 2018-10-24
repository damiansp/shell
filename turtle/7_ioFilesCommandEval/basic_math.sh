#!/bin/bash

i=1
while [ "$i" -le 5 ]; do
    echo i is $i
    i=$((i + 1))
done

echo loop finished
echo i is $i
