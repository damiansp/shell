#! /bin/bash

x=abc
printf "x is now '%s'. Enter new value: " $x
read x
echo $x
