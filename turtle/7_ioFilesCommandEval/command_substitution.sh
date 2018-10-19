# for i in `cd /old/code/dir; echo *.c`; do
#     diff -c /old/code/dir/$i $i | more
# done


echo outer $(echo inner1 $(echo inner2) inner1) outer
echo "outer +$(echo inner -$(echo "nested quote" here)- inner)+ outer"


# previous recast:
for i in $(cd /old/code/dir; echo *.c); do
    diff -c /old/code/dier/$i $i
done | more


