# sort file, remove duplicate rows
sort latinNums.txt | uniq

# as previous but give freq counts for each record
sort latinNums.txt | uniq -c

# show only duplicates
sort latinNums.txt | uniq -d

# show rows with no duplicates only
sort latinNums.txt | uniq -u
