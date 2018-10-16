for i in `cd /old/code/dir; echo *.c`; do
    diff -c /old/code/dir/$i $i | more
done


