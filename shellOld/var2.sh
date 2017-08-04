#!/bin/sh

echo "I was called with $# parameters"   # no. of parameters/args
echo "My name is $0"                     # 0th param (the command)
echo "My first paramater is $1"
echo "My second parameter is $2"
echo "All parameters are $@"             # all (non-0) parameters/args
