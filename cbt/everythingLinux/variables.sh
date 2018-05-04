#!/bin/bash

echo "First command line arg passed: " $1
echo "Second command line arg passed: " $2
echo "Enter the TEST variable value:"
read TEST
echo $TEST

echo "Enter number 1: "
read N1
echo "Enter number 2: "
read N2
echo "The sum is: "
expr $N1 + $N2
echo "Yes, the sum is" `expr $N1 + $N2`

SUM=`expr $N1 + $N2`
echo "It really is $SUM"
