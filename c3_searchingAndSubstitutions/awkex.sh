awk -F: '{printf "User %s is really %s\n", $1, $5}' /etc/passwd
awk -F: -v 'OFS= -~- ' '{print $1, $5}' /etc/passwd


awk 'BEGIN {FS = ":"; OFS = " ::: "}
{print $1, $5}' /etc/passwd
