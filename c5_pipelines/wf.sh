#! /bin/sh
# Word Frequency
# Read a text stream to stdin, and output a list of the n (def = 25) most
# frequently occurring words and their counts, in order of descending counts
# to stdout.
#
# Usage:
#   wf [n]

tr -cs A-Za-z\' '\n' | # replace anything that is not ' or letter with \n
    tr A-Z a-z |       # Change upper case to lower
    sort |
    uniq -c |          # eliminate duplicates, but show counts
    sort -k1,1nr -k2 | # sort by count (desc), then by word (asc)
    sed ${1:-25}q      # print ontly the first n
