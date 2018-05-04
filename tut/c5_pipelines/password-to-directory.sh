#! /bin/sh
# Filter an input stream formatted like /etc/passwd, and output an office
# directory derived from the data.
# Usage:
#   passwort-to-directory < /etc/passwd > office-directory-file
#   ypcat passwd | password-to-directory > office-directory-file
#   niscat passwd.org_dir | password-to-directory > office-directory-file

#unmask 077 # restrict access to intermediate files # not available 
PERSON=/tmp/pd.key.person.$$ # unique temp filenames
OFFICE=/tmp/pd.key.office.$$
TELEPHONE=/tmp/pd.key.telephone.$$
USER=/tmp/pd.key.user.$$

# delete temp files on job termination (normal or abnormal)
trap "exit 1"                                 HUP INT PIPE QUIT TERM
trap "rm -f $PERSON $OFFICE $TELEPHONE $USER" EXIT

# extract fields 1 and 5 into a temp file
awk -F: '{ print $1 ":" $5 }' > $USER # reads stdin

# Strip everything from first slash to end of line, e.g., from:
# dobolina:Bon Dobolina/OSD007/123-4566                   to:
# dobolina:Bob Dobolina
sed -e 's=/.*= =' \
    -e 's=^\([^:]*\) \([^ ]*\)=\1:\3, \2=' < $USER | sort > $PERSON

# make key:office pair file
# outfile record ex: dobolina:OSD007
sed -e 's=^\([^:]*\):[^/]*/\([^/]*\)/.*$=\1:\2=' < $USER | sort > $OFFICE
# key:phone
sed -e 's=^\([^:]*\):[^/]*/[^/]*/\([^/]*\)=\1:\2=' < $USER | sort > $TELEPHONE

# merge files; use ":" as field delineator; cut 'key' field; sort by name; and
# reformat to separate fields with tabs
join -t: $PERSON $OFFICE |
    join -t: - $TELEPHONE |
    cut -d: -f 2- |
    sort -t: -k1,1 -k2,2 -k3,3 |
    awk -F: '{ printf("%-39s\t%s\t%s\n", $1, $2, $3) }'
