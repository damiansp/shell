#! /bin/bash
#
# chdir --- private function to update PS1 when changing directories

chdir() {
    cd "$@"  # actually change dirs
    x=$(pwd) # save current dir
    PS1="${x##*/}\$ " # lop off leading components and assign to PS1
}

# create override to cd
cd() {
    command cd "$@" # uses built-in cd
    x=$(pwd)
    PS1="${x##*/}\$ "
}
