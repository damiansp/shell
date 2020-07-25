mytest=(one two three four five)
echo mytest # one
echo ${mytest[1]} # two
echo ${mytest[*]} # whole array
mytest[2]=six
echo ${mytest[*]} # one two six four five
unset mytest[2]
echo ${mytest[*]} # one two four five
echo ${mytest[2]} # (null)
echo ${mytest[3]} # four (!)
unset mytest
echo ${mytest[*]} # (null)
echo ${mytest[1]} # (null)
