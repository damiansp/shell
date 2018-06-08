#!/usr/bin/bash

while true; do
    ssh -N -L 8000:localhost:80 remote_machine
    echo "ssh connection disrupted, attempting to restart..."
    sleep 2
done
