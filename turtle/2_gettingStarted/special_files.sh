if grep pattern myfile > /dev/null; then
    echo "pattern found"
else
    echo "pattern not found"
fi


printf "Enter new password: "
stty -echo                     # turn of echoing of typed characters
read pass < /dev/tty
printf "Enter again: "
read pass2 < /dev/tty
stty echo                      # turn back on


