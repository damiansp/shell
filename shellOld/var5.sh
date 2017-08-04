#!/bin/sh
old_IFS="$IFS" # internal field separator
IFS=:
echo "Please input 3 data separated by colons: "
read x y z
IFS=$old_IFS
echo "x: $x, y: $y, z: $z"
echo "$$ is the PID of the current shell and $! is the PID of the previous process"
