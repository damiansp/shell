#! /bin/bash

# Filter an input stream formatted like /etc/passwd and output an office
# directory derived from that data
#
# Usage:
#   passwd_to_dir < /etc/passwd > office-directory-file
#   ypcat passwd | passwd-to-directory > office-directory-file
#   niscat passwd.org_dir | passwd-to-directory > office-directory-file

