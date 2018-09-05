#!/bin/bash

reminder="Time for dental appointment!"
sleep 1 # seconds
echo $reminder

sleep 1
echo ***${reminder}***

echo ${missing:-nothing here}
echo ${missing:=not missing now}
echo ${missing:-nothing here}
#echo ${exists:?"undefined"} # not in Darwin
#echo ${reminder:?"undefined"}
echo ${reminder:+1} # prints 1 if variable exists
