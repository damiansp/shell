if test "$str1" = "$str2"; then # same as
   if [ "$str1" = "$str1" ]; then
       ...
   fi
fi

# test options
# -b file : file is a block     device file
# -c file :           character
# -d file : file is a directory
# -e file : file exists
# -f file : file is a regular file
# -g file : file has its setgid bit set
# -p file : file is a named pipe (FIFO file)
# -r file : file is readable
# -S file : file is a socket
# -s file : file is not empty
# -t n    : file descriptor n points to a terminal
# -u file : file has its setuid set
# -w file : file is writable
# -x file : file is executable OR is a searchable directory
# -h, -L file : file is a symbolic link
# string, -n string : string is not null
# -z string         : string is null

# s1 = s2  : strings s1 and s2 are     the same
# s1 != s2 :                       not
# n1 -eq n2 : ints n1 and     n2 are equal
# n1 -ne n2 :             not
# n1 -lt, -gt, -le, -ge n2 : n1 <, <=, >, >= n2

# Examples
if [ -f "$file" ]; then
    echo $file is a regular file
elif [ -d "$file" ]; then
    echo $file is a directory
fi

if [ ! -x "$file" ]; then
    echo $file is NOT executable
fi





