#!/bin/bash
# writing few things that I learned

diskspace=$(sudo du -sh)
avaispace=$(df -h | grep rootfs | awk '{print $4}')
cdate=$(date +"%d-%h-%Y")
ctime=$(date +"%I:%M")
yellow=$(tput setab 0; tput setaf 3; tput bold) 	
none=$(tput sgr0)
hostname=$(hostname)
host=$(uname --all | awk '{print $1}')
log="$cdate"_report.log
echo "Writing small script to find information from this $host machine called $hostname"
printf -v info "\n\t\tToday's Date is:\t\t\t$yellow%s$none\n\t\tThe Time is:\t\t\t\t$yellow%s$none" $cdate $ctime
echo "$info"
printf -v system "\t\tThe hostame is:\t\t\t\t$yellow%s$none\n\t\tThe System is:\t\t\t\t$yellow%s\n$none" $hostname $host
echo "$system"
echo "The total remaining space $yellow$avaispace$none and current directory space used is $yellow$diskspace$none"
echo -e $yellow"The log file has been saved at $log"$none
cat << endofline
Doing my Excersise one in bash. 
endofline

printf "Hostname:\t%s\n" $hostname > $log
printf "System:\t\t%s\n" $host >> $log
printf "Disk Avai:\t%s\n" $avaispace >> $log

