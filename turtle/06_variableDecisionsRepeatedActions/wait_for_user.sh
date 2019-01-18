#!/bin/bash

# wait_for_user -- wait for user to log in
# Usage: wait_for_user user [ sleeptime ]

wait_for_user() {
    until who | grep "$1" > /dev/null; do
        sleep ${2:-30} # default to 30 if $2 not given
    done
}
