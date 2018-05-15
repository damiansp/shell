#!/bin/bash

for x in 1 2 3 7 8 9; do
    echo "Number: $x"
done


for x in {1..10}; do
    echo "x is $x"
done

for x in {1..10..2}; do
    echo "x is $x"
done

for food in fish chicken tuna tacos; do
    echo "I want to eat $food"
done

echo "the files in this directory are:"
for file in `ls`; do
    echo " $file"
done

echo "the files in this directory are:"
for file in $(ls); do
    echo " $file"
done

#for x in {1..255}; do
#    echo "Pinging 172.20.0.$x"
#    timeout 0.5 ping -c 1 172.20.0.$x # timeout not found on Darwin bash
#done

