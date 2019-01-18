#! /bin/bash

x=abc
printf "x is now '%s'. Enter new value: " $x
read x
echo $x

printf "Enter name, rank, serial number: "
read name rank serial
echo "$serial: $name ($rank)"


#while IFS=: read user pass uid gid fullname homedir shell
#do 
#    echo $user    
#done < /etc/passwd
      
# or for better legibility:
cat /etc/passwd |
    while IFS=: read user pass uid gid fullname homedir shell; do
        echo "$uid: $user ($gid)"
    done
          
