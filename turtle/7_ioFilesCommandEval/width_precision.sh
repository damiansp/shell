#! /bin/bash

printf "|%10s|\n" hello
printf "|%-10s|\n" goodbye
printf "%.5d\n" 15
printf "%.10s\n" "a very long string"
printf "%.2f\n" 123.456789

width=5
prec=6
myvar=24.68097

printf "|%${width}.${prec}G|\n" $myvar
printf "|%*.*G|\n" 5 6 $myvar
