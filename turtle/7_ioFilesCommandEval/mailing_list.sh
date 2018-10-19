#! /bin/bash

# mailing_list
#
# Generate a mailing lis of all users of a given shell.
#
# Usage:
#   mailing_list < etc/passwd
#   ypcat passwd | passwd-to-mailing-list
#   niscat passwd.org_dir | passwd-to-mailing-list

rm -f /tmp/*.mailing-list

while IFS=: read user passwd uid gid name home shell; do
    shell=${shell:-/bin/sh}
    file="/tmp/$(echo $shell | sed -e 's;^/;;' -e 's;/;-;g').mailing-list"
    echo $user, >> file
done
