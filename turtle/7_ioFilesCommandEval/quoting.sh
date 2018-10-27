echo Escaping a \* and a \?
echo 'Single quotes can capture * ? [metachars] ` $ \ too'
echo 'He said, "how'\''s tricks?"'
echo "She sai, \"Movin' right along\""

x="I am x"
echo "\$x is \"$x\". Here to tell you, '$(echo Hello, World!)'"

x="$x $x"
echo "\$x is \"$x\"."



