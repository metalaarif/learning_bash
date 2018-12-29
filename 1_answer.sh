#!/bin/bash
# writing few things that I learned

diskspace=$(sudo du -sh)
usedspace=$(df -l | grep rootfs | awk '{print $5}')
cdate=$(date +"%d-%h-%Y")
ctime=$(date +"%I:%M")
yellow=$(tput setab 0; tput setaf 3; tput bold) 	
none=$(tput sgr0)
hostname=$(hostname)
host=$(uname --all | awk '{print $1}')
log="$cdate"_report.log
printf -v info "\t\tToday's Date is:\t\t\t$yellow%s$none\n\t\tThe Time is:\t\t\t\t$yellow%s$none" $cdate $ctime
echo "$info"
printf -v system "\t\tThe hostame is:\t\t\t\t$yellow%s$none\n\t\tThe System is:\t\t\t\t$yellow%s$none" $hostname $host
echo "$system"
echo "The total used up space is $yellow$usedspace$none and current directory space used is $yellow$diskspace$none"
echo -e $yellow"The log file has been saved at $log"$none
cat << endofline
Doing my Excersise one in bash. 
endofline

printf "Hostname:\t%s\n" $hostname >> $log
printf "System:\t\t%s\n" $host >> $log
