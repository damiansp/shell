#!/bin/bash

MY_NAME="Damian"
echo "My name is $MY_NAME, what's yours?"
read YOUR_NAME

if [ $YOUR_NAME = $MY_NAME ]; then
    echo "We have the same name!"
else
    echo "Cool name, $YOUR_NAME, but not as cool as $MY_NAME"
fi

# -eq, = (equals)
# -ne, != (not equal)
# -gt, -ge, -lt, -le (greater/less than/ or equal to)
# -Z (string is NULL "")
# -n (string is not NULL)

# Files
# -a, -e (file exists)
# -d (directory exists)
# -f (file exists as regular file [not dir, not link])
# -h, -L (file exists as link)
# -r, -w, -x (file exists and is readable/writable/executable)
# -s (file exists and size > 0)
