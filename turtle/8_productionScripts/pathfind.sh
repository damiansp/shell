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


usage_and_exit() {
    usage
    exit $1
}


usage() { echo "Usage: $PROGRAM [--all] [--?] [--version] envvar pattern(s)" }


version() { echo "$PROGRAM version $VERSION" }


warning() {
    echo "$@" 1>&2
    EXITCODE=`expr $EXITCODE + 1` # EXITCODE=$((EXITCODE + 1)) for POSIX sytems
}


all=no
envvar=
EXITCODE=0
PROGRAM=`basename $0`
VERSION=1.0


while test $# -gt 0; do  # while [ $# -gt 0 ]; do
    case $1 in
        --all | --al | --a | -all | -al | -a)
            all=yes
            ;;
        --help | --hel | --he | --h | '--?' | -help | -hel | -he | -h | '-?' )
            usage_and_exit 0
            ;;
        --version | --versio | --versi | --vers | --ver | --ve | --v | \
            -version | -versio | -versi | -vers | -ver | -ve | -v)
            version
            exit 0
            ;;
        -*)
            error "Unrecognized option: $1"
            ;;
        *)
            break
            ;;
    esac
    shift
done

envvar="$1"
test $# -gt 0 && shift

test "x$envvar" = "xPATH" && envvar=OLDPATH # prevent user passing in PATH
dirpath=`eval echo '${'"$envvar"'}' 2>/dev/null | tr : ' '`

# Check for error conditions
if test -z "$envvar"; then
    error Environment variable missing or empty
elif test "x$dirpath" = "x$envvar"; then
    error "Broken sh on this platform: cannot expand $envvar"
elif test -z "$dirpath"; then
    error Empty directory search path
elif test $# -eq 0; then
    exit 0
fi


for pattern in "$@"; do
    result=
    for dir in $dirpath; do
        for file in $dir/$pattern; do
            if test -f "$file"; then
                result="$file"
                echo $result
                test "$all" = "no" && break 2
            fi
        done
    done
done

# Limit exit status to common Unix practices
test $EXITCODE -gt 125 && EXITCODE=125
exit $EXITCODE
