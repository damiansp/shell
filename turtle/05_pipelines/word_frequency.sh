#! /bin/bash
# Read a text stream on stdin, and output a list of the n (def=25) most
# frequently occurring words and their counts (descending) on stdout
#
# Usage:
#   word_frequency [n]

tr -cs A-Za-z\' '\n' |   # non-letters to newlines
    tr A-Z a-z |         # to lower case
    sort |
    uniq -c |            # eliminate duplicates, showing counts
    sort -k1,1nr -k2 |   # sort by count (desc), then by word (asc)
    sed ${1:-25}q        # print first n lines
