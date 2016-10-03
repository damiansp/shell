# send addressbook.txt to print queue lcb102
lpr -Plcb102 addressbook.txt # or
lp -d lcb102 addressbook.txt

# ask for queue status
lpq -Plcb102 # or
lpstat -t lcb102

# kill print job
lprm -Pclb102 81352 # 81352 is Job number shown in status; or
cancel lcb102-81352


