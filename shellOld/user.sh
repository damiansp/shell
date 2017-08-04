#!/bin/sh
echo "Your name, please:"
read USER_NAME
echo "Hello, $USER_NAME, the file, ${USER_NAME}_file was created"
touch "${USER_NAME}_file"
