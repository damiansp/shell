#! /bin/sh -
# Read XML/HTML file given on command line, and output to stdout a
# tab-separated list of:
#
#   count   word   tag   filename
#
# sorted by ascending word and tag.
#
# Usage:
#   taglist xml-file

cat "$1" |
    sed -e 's#systemitem *role="url"#URL#g'\
        -e 's#/systemitem#/URL/#' |
    tr ' ( ){  }[  ]' '\n\n\n\n\n\n\n' |
    egrep '>[^<>]+</' |
    awk -F'[<>]' -v FILE="$1"\
        '{ printf("%-31s\t%-15s\t%s\n", $3, $2, FILE) }' |
    sort |
    uniq -c |
    sort -k2,2 -k3,3 |
    awk '{
            print ($2 =  = Last) ? ($0 " <----") : $0
            Last = $2
         }'

