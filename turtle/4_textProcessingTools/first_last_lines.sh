#! /bin/bash

# First line(s) of file:
head -1 ../alice.txt
echo ''

awk 'FNR <= 2' ../alice.txt
echo ''

sed 3q ../alice.txt
echo ''

# Last lines of file
tail -1 ../alice.txt
