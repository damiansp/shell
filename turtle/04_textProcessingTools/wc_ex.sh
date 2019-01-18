#!/bin/bash

echo wc
wc ../alice.txt

echo bytes
wc -c ../alice.txt

echo lines
wc -l ../alice.txt

echo words
wc -w ../alice.txt
