#!/bin/sh

echo "Talk to me... (like lovers do)..."
while :
do
    read INPUT_STRING
    case $INPUT_STRING in
        hello)
            echo "Hello yourself!"
            ;;
        bye)
            echo "See you again!"
            break
            ;;
        *)
            echo "Uh... say what?"
            ;;
    esac
done

echo
echo "That's all, folks!"
