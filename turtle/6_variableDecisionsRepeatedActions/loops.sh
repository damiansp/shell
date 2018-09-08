# assume there are a number of files in the dir atlbrochureXXX.xml, and we want
# to perform the same search and replace operation in each:

for i in atlbrochure*.xml; do
    echo $i
    mv $i $i.old
    sed 's/Atlanta/&, the capital of the South/' < $i.old > $i
done


# loop over command line args
for i; do # same as for i in $@; do
    case $i in
        -f) echo handle file... ;;
        #...
    esac
done


while condition; do
    # ...
done

until condition; do
    # ...
done


# Wait of specified user to log in, check every 30s
printf "Enter username: "
read user
until who | grep "$user" > /dev/null; do
    sleep 30
done

      
      
