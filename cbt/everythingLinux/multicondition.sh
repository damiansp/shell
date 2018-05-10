#!/bin/bash

echo "What is your name? "
read NAME

if [ $NAME = "Bob" ] || [ $NAME = "Tom" ] || [ $NAME = "Martha" ]; then
    echo "Howdy, $NAME."
elif [ $NAME = "Daryl" ]; then
    echo "You go on, $NAME. Git!"
else
    echo "Howdy, stranger.  $NAME, was it?"
fi

case $NAME in
    "Bob")
        echo "Long time, no see, pardner.";;
    "Daryl")
        echo "I'm warnin' you, boy!";;
    *)
        echo "What bring you to these parts?";;
esac
