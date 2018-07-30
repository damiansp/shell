#! /bin/bash

# Filter an input stream formatted like /etc/passwd and output an office
# directory derived from that data
#
# Usage:
#   passwd_to_dir < /etc/passwd > office-directory-file
#   ypcat passwd | passwd-to-directory > office-directory-file
#   niscat passwd.org_dir | passwd-to-directory > office-directory-file

#unmask 077                  # restrict tmp files to just me (not on OSX)
PERSON=/tmp/pd.key.person.$$ # $$ is the shell variable
OFFICE=/tmp/pd.key.office.$$
PHONE=/tmp/pd.key.phone.$$
USER=/tmp/pd.key.user.$$

trap "exit 1"
trap "rm -f $PERSON $OFFICE $PHONE $USER" # delete tmp files even on failure

awk -F: '{ print $1 ":" $5 }' > $USER # read fields 1, 5 from stdin
sed -e 's=/.*=  =' \
    -e 's=^\([^:]*\):\(.*\) \([^ ]*\)=\1:\3, \2=' < $USER | sort > $PERSON
sed -e 's=^\([^:]*\):[^/]*/\([^/]*\)/.*$=\1:\2=' < $USER | sort > $OFFICE
sed -e 's=^\([^:]*\):[^/]*/\([^/]*\)=\1:\2=' < $USER | sort > $PHONE

join -t: $PERSON $OFFICE |
    join -t: - $PHONE |
    cut -d: -f 2- |                                     # keep field 2 - end
    sort -t: -k1,1 -k2,2 -k3,3 |                        # sort by last name
    awk -F: '{ printf("%-39s\t%s\t%s\n", $1, $2, $3) }' # format

