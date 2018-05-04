#! /bin/sh
# Convert an input stream containing ISO 8859-1 chars encoding in the range
# [128, 255] to HTML equivalents in ASCII. [0, 127] are preserved as normal
# ASCII. (Incomplete-- Subset for demo purposes only.)
#
# Usage:
#   iso-to-html infile(s) > outfile

sed -e 's=¡=\&iexcl;=g' \
    -e 's=ü=\&uuml;=g' \
    -e 's=é=\&eacute;=g' \
    -e 's=£=\&pound;=g' \
    "$@"
