#! /bin/bash -
#
# Search fo one or more ordinary files or file patterns on a search path defined
# by a specified environmental variable.
#
# The output on standard output is normally etither the full path to the firs
# instance of each file found on the search path, or "filename: not found" on
# standard error.
#
# The exit code is 0 if all files are found, and otherwise a non-zero value
# equal to the number of files not found (up to shell exit cod limit of 125).
#
# Usage:
#   pathfind [--all][--?][--help][--version] envvar pattern(s)
#
# With the --all option, ever directory int he path is searched instead of
# stopping at the first one found.

# For security reasons...
IFS='
  ' # '\n \t'
OLDPATH="$PATH" # disallow suspect PATH vars to be passed in
PATH=/bin:/usr/bin
export PATH     # export our minimal PATH instead



error() {
    echo "$@" 1>&2
    usage_and_exit 1
}

