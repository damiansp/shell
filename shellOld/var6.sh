#!/bin/sh
echo "What is your name [ `whoami` ] \c" # \c prevents \n
read myname
if [ -z "$myname" ]; then
    myname=`whoami`
fi
echo "Your name is: ${myname:-`whoami`}" # echoes myname if exists, else echoes whoami's return val
