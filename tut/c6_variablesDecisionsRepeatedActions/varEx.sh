set -- hello "hi there" greetings
echo there are $# total arguments


for i in $*   # loop over args individually
do
    echo i is $i
done


for i in $@   # without quotes, $* same as $@
do
    echo i is $i
done


for i in "$*" # with quotes, $* is one string
do
    echo i is $i
done


for i in "$@" # with quotes, $@ preserves exact arg values
do
    echo is is $i
done

shift         # lops off the first arg


for i in "$@"
do
    echo i is $i
done
