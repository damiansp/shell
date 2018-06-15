#!/bin/bash

echo turning tracing on
set -x 
echo 1st echo
echo 2nd echo
echo turning tracing off
set +x
echo 3rd echo
