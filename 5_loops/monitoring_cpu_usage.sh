#!/bin/bash

threshold=80

while true
do
	cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
	cpu=${cpu%.*} # remove decimal

	if [ "$cpu" -gt "$threshold" ]; then
		echo "High CPU usage detected: ${cpu}%"
	else
		echo "CPU usage normal: ${cpu}%"
	fi

	sleep 5
done
