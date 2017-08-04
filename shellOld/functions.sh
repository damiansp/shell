#!/bin/sh
# A simple script with a function
add_a_user() {
    USER=$1
    PASSWORD=$2
    shift
    shift

    COMMENTS=$@
    echo "Adding user, $USER..."
    echo useradd -c "$COMMENTS" $USER
    echo passwd $USER $PASSWORD
    echo "Added user, $USER ($COMMENTS) with password: $PASSWORD"
}

# Main
echo "Start of script..."
add_a_user bob dobolina Bob Dobolina the dude
add_a_user fred yabadabadoo Fred Flintstone the lunkhead
add_a_user bilko heaveho Sgt. Bilko the role model
echo "End of script"
