#! /bin/bash
i=1

while [ "$i" -le 5 ]; do
    echo i is $i
    i=`expr $i + 1`
done

echo done with loop
echo i is $i
