# remove everything after first "Alice" of each line
sed 's/Alice.*//' ../alice.txt | 
    sort -u # and sort by line

cat ../alice.txt | sed 's/\(Al\)/\1abama/' # replaces "Al" with "Alabama"

# appends "and her big old head" to first instance of "Alice" per line
sed 's/Alice/&, and her big old head/' < ../alice.txt

# replaces Alice with Bob globally (multi x per line)
sed 's/Alice/Bob/g' < ../alice.txt

# replaces the 2nd occurrence
sed 's/Alice/Bob/2' < ../alice.txt 

# multiple edit
cat ../alice.txt |
    sed -e 's/Alice/Bob/g' -e 's/Dinah/Chuck/g' -e 's/Rabbit/Monkey/g' \
        -e 's/rabbit/monkey/g' -e 's/cat/hippo/g'

# or put in file
sed -f swapper.sed ../alice.txt


