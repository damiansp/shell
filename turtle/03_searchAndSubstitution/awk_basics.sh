#!/bin/bash

echo "First field in each line:"
head -10 ../alice.txt | awk '{ print $1 }'

echo "2nd and 5th field:"
head -10 ../alice.txt | awk '{ print $2, $5 }'

echo "First and last field:"
head -10 ../alice.txt | awk '{ print $1, $NF }'

echo "Print non-empty lines:"
head -10 ../alice.txt | awk 'NF > 0 { print $0 }'
head -10 ../alice.txt | awk 'NF < 1 { print "EMPTY" }' 


# -F to change field delimiter
head -10 ../alice.txt | awk -Fe '{ print $1 }'

# -v for output field separator
head -10 ../alice.txt | awk -Fe -v 'OFS=... ' '{ print $1, $3}'

# Insert text
head -10 ../alice.txt | awk -Fa '{ print "And: " $1 }'

# Format strings
head -10 ../alice.txt | awk  '{ printf "First: %s, and last: %s\n", $1, $NF }'


awk 'BEGIN { FS=","; OFS="__" } { print $1, $NF}' ../alice.txt 
