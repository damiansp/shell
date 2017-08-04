#!/bin/sh
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then     # $? is the exit value of the previous command
    echo "Sorry, Houston, we had a problem."
fi
