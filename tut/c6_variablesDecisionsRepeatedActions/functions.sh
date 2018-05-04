# wait_for_ser --- wait for a user to log in
#
# usage: wait_for_user [ sleeptime ]

wait_for_user() {
    until who | grep "$1" > /dev/null
    do
        sleep ${2:-30} # use arg 2 or default to 30 s
    done        
}


# equal --- compare 2 strings
equal() {
    case "$1" in
        "$2") return 0 ;; # match
    esac

    return 1              # don't match
}
