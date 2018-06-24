# remove everything after first "Alice" of each line
sed 's/Alice.*//' ../alice.txt | 
    sort -u # and sort by line

