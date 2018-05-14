#!/bin/bash

X=1
echo "Give me a number"
read NUM
echo "Counting to $NUM:"

while [ $NUM -ge $X ]; do
    echo $X
    let X=X+1
done


FAVORITE_FOOD="sushi"
echo "Try to guess my favorite food"
read GUESS

until [ $GUESS == $FAVORITE_FOOD ]; do
    echo "Nope. Guess again."
    read GUESS
done
echo "Yeah! Oishiiiii!"
