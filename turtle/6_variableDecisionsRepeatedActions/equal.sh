# equal -- compare 2 strings
equal() {
    case $1 in
        "$2") return 0;; # they match
    esac
    return 1             # they don't match
}

# use
# if equal "$a" "$b"...

