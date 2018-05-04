# send section of dict/words to fmt
sed -n -e 9991,10010p /usr/share/dict/words | fmt

# reformat to max line width of 30
sed -n -e 9995,10004p /usr/share/dict/words | fmt -w 30


