#!/bin/bash
# writing few things that I learned

diskspace=$(sudo du -sh)
usedspace=$(df -l | grep rootfs | awk '{print $5}')
cdate=$(date +"%d-%h-%Y")
ctime=$(date +"%I:%M")
printf -v main "Today's Date is:\t\t\t%s\nthe time is:\t\t\t\t%s" $cdate $ctime
echo "$main"
echo "The total used up space is $usedspace and current directory space used is $diskspace"
