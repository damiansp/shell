case $1 in
    -f)
        # ... do whatever
    ;;
    -d | --directory)
        # ...
    ;;
    *) # default
        echo $1: unknown option >&2
        exit 1
        ;; # optional here
esac
