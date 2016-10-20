#!/bin/bash
while true
do
	sudo top -n 1 > top-output.txt
	STRING=$(grep ShooterGameServ top-output.txt)
	arr=($STRING)

	cpu=10
	mem=11

	sudo echo $(date +"%Y-%m-%d	%H-%M-%S")	${arr[cpu-1]}	${arr[mem-1]}>>resource-data-5sec.txt
	#sudo echo ${arr[cpu-1]} >> resource-data-5sec.txt
	#sudo echo ${arr[mem-1]} >> resource-data-5sec.txt

	sleep 5
done
