cd /home
du -s * |      # raw disk usage
    sort -nr | # sort numerically desc
    sed 10q |  # stop after 1st 10 lines
    while read amount name; do
        mail -s "disk usage warning" $name << EOF
 Greetings. You are one of the top 10 consumers of disk space on the system. Your home directory uses $amount disk blocks. Please clean up unneeded files as soon as possible.
Mini tanks.
-Admin
EOF
    done
