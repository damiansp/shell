#!/bin/bash

MY_FILE="./theFile.txt"

if [ -a $MY_FILE ]; then
    rm $MY_FILE
else
    touch $MY_FILE
fi
