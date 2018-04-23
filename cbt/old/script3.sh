#!/bin/bash

echo "OK, now put the chicken in the box!"

cd box > /dev/null 2>&1 # sends error messages to /dev/null

if [ $? != 0 ]; then
    echo "There is no box!!!"
else
    echo "OK, I'm in `pwd` with the chicken."
fi
