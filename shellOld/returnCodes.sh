#!/bin/sh

adduser() {
    USER=$1
    PASSWD=$2
    shift; shift
    COMMENTS=$@

    useradd -c "${COMMENTS}" $USER
    if [ "$?" -ne "0" ]; then
        echo "Useradd failed"
        return 1
    fi

    passwd $USER $PASSWD
    if ["$?" -ne "0" ]; then
        echo "Setting password failed"
        return 2
    fi

    echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

# main
adduser bob letmein Bob Holness from Blockbusters
ADDUSER_RETURN_CODE=$?

if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
    echo "Something went wrong with useradd"
elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then
    echo "Something went wrong with passwd"
else
    echo "Bob Holness add to system"
fi
