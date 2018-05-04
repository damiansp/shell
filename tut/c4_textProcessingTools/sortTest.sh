# Sort by stict byte order
LC_ALL=C sort french-english.txt # e < é, o < ô

# Sort by Canadian-French order (apparently the same)
LC_ALL=fr_CA.iso88591 sort french-english.txt

# -t: use : as delimiter; -k1,1 use as sort key beginning of first field to end
# of first field
sort -t: -k1,1 /etc/passwd

# sort on 3rd field, numerically, reversed
sort -t: -k3nr /etc/passwd

# sort by field 4, then by field 3
sort -t: -k4n -k3n /etc/passwd

# sort by field 4, output unique (in search field) records only (no duplicates)
sort -t: -k4n -u /etc/passwd

# Sort multi-line blocks
cat addressbook.txt |
    awk -v RS="" '{ gsub("\n", "QXZ"); print }' | # convrt addr to single line
    sort -f |                                     # sort bundles, ignore case
    awk -v ORS="\n\n" '{ gsub("QXZ", "\n"); print }' | # restore line struct
    grep -v '# SORTKEY'                                # remove markup lines

# examine stability of output: note although sort fields identical output is
# not identical to input
sort -t_ -k1,1 -k2,2 nums.txt
