# wc returns number of lines, words, and bytes
echo This is a test of the emergency broadcast system | wc

# bytes only
echo Testing one two three | wc -c

# lines only
echo Testing one two three | wc -l

# words only
echo Testing one two three | wc -w

# passing mult args to wc will return a one-line response for each, and total
wc /etc/passwd /etc/group
