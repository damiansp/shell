#! /bin/bash

# copy a directory
find /home/tolstoy -type d -print  |  # find all dirs
    sed 's;home/tolstoy/;home/lt/;' | # change name
    while read newdir; do             # read new dir name
        mkdir $newdir
    done
