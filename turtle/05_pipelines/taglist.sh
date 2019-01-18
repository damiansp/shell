#! /bin/bash

# Read an HTML/XML/etc file given on the command line containing markup and
# output on stdout a tab-separated list of:
#     count   word   tag   filename
# sorted by ascending word and tag
#
# Usage:
#   taglist xml-file

cat "$1" |
    # <systemitem role="URL">, </sytemitem> -> <URL>, </URL>
    sed -e 's#systemitem *role="url"#URL#g' -e 's#/systemitem#/URL#' |
    tr ' ( ){ }[ ]' '\n\n\n\n\n\n\n' |
    # select content enclosed in tags
    egrep '>[^<>]+</' |
    awk -F'[<>]' -v FILE="$1" '{ printf("%-31s\t%-15s\t%s\n", $3, $2, FILE) }' |
    sort |
    uniq -c |
    sort -k2,2 -k3,3 |
    awk '{
            print ($2 = = Last) ? ($0 " <----") : $0
            Last = $2
         }'
