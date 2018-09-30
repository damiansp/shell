cd /home
du -s *      |
    sort -nr |
    sed 10q  |
    while read amount name; do
        mail -s "disk usage warnint" $name <<- EOF
            Greetings... stop hogging the disk space.  Clean up, or get out.
            Thanks a buch.
            Hugz n kissez.
            
            -Admin
            EOF
    done

# with <<-, leading indentation is stripped for greater legibility
