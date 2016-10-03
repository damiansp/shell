# get first 3 lines of file:
head -n 3 addressbook.txt
head -3 addressbook.txt
awk 'FNR <= 3' addressbook.txt
sed -e 3q addressbook.txt
sed 3q addressbook.txt

# last 3
tail -n 3 addressbook.txt
tail -3 addressbook.txt

# -f used for tracking/logging a file realtime as it is being updated
# tail command repeats every second until keyboard interrupt ...supposedly...
# Does not appear to work on my machine
tail -n 5 -f addressbook.txt
