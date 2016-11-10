#!/bin/bash

cpu=9
mem=10
cur_date=$(date +"%Y-%m-%d")
echo "starting date is $cur_date"

# Create starting file if todays file does not exist
if [ ! -e  /home/ark/epicsrvrmgr/monitor/Data/resource_data_5sec_$cur_date.txt ] ; then
echo "DATE		TIME	CPU	MEM" > /home/ark/epicsrvrmgr/monitor/Data/resource_data_5sec_$cur_date.txt
fi

while true
do
	#sudo top -n 1 > /home/ark/epicsrvrmgr/monitor/top-output.txt
	#STRING=$(grep ShooterGameServ /home/ark/epicsrvrmgr/monitor/top-output.txt)

	STRING=$(/usr/bin/top -b -n 1 | grep ShooterGameServ)

	arr=($STRING)

	next_date=$(date +"%Y-%m-%d")

	if [ "$cur_date" != "$next_date" ];then
		# Day changed. Create a new file using cur_date.
		echo "DAY CHANGE"
		echo "DATE	      TIME    CPU     MEM" > /home/ark/epicsrvrmgr/monitor/Data/resource_data_5sec_$cur_date.txt

		# And change prev_date to cur_date
		cur_date=$next_date
	fi

	sudo echo $(date +"%Y-%m-%d	%H-%M-%S")	${arr[cpu-1]}	${arr[mem-1]}>>/home/ark/epicsrvrmgr/monitor/Data/resource_data_5sec_$cur_date.txt
	echo $(date +"%Y-%m-%d     %H-%M-%S")      ${arr[cpu-1]}   ${arr[mem-1]}

	sleep 5
done
