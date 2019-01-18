#! /bin/bash
sort -t: -k1,1 /etc/passwd # : is delimiter, select fields 1-1
echo

sort -t: -k3nr /etc/passwd # sort by 3rd field, descending
echo

sort -t: -k4n -k3n /etc/passwd # sort by field 4, then 3
echo

sort -t: -k4n -u /etc/passwd   # unique only
echo

sort numbers.txt | uniq        # max of one each
echo

sort numbers.txt | uniq -c     # counts
echo

sort numbers.txt | uniq -d     # show only duplicates
echo

sort numbers.txt | uniq -u     # show unique only
