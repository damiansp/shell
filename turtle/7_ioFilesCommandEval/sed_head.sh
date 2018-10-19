#! /bin/bash

count=$(echo $1 | sed 's/^-//') # strip leading minus
shift
sed ${count}q "$@"


# invoke as
# sed_head -10 foo.xml
# -> sed 10q foo.xml
