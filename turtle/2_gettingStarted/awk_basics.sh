#!/bin/bash

echo "First field in each line:"
head -10 ../alice.txt | awk '{ print $1 }'

echo "2nd and 5th field:"
head -10 ../alice.txt | awk '{ print $2, $5 }'

echo "First and last field:"
head -10 ../alice.txt | awk '{ print $1, $NF }'

echo "Print non-empty lines:"
head -10 ../alice.txt | awk 'NF > 0 { print $0 }'
head -10 ../alice.txt | awk 'NF > 0'  # same (print is default)
