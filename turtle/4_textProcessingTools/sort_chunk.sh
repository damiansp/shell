#!/bin/bash

cat contacts.txt |
    # convert addresses to single line
    awk -v RS="" '{ gsub("\n", "^Z"); print }' | # RS: record separator
    # sort bundles, ignore case
    sort -f |                       
    awk -v ORS="\n\n" '{ gsub("^Z", "\n"); print }' | # restore line breaks
    grep -v '# SORTKEY'                               # remove markup
