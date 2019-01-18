# wait for specified user to log in, check every 30s
printf "Enter username: "
read user
while true; do
    if who | grep "$user" > /dev/null; then
        break
    fi
    sleep 30        
done


while condtion1; do
    while condition2; do
        # ...
        if exit_condition_2; then
            break
        elif exit_condition_1; then
            break 2
        fi
    done
done

