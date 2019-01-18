# set flag vars to empty
file=  verbose=  quiet=  long=

while [ $# -gt 0 ]; do # loop until no args left
    case $1 in
        -f) file=$2
            shift;;
        -v) verbose=true
            quiet=  ;;
        -q) quiet=true
            verbose=  ;;
        -l) long=true;;
        --) shift  # by convention, -- ends options
            break;;
        -*) echo $0: $1: unrecognized option >&2;; # redirect to stderr
        *)  break;;
    esac
done
