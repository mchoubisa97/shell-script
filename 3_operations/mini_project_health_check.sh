#!/bin/bash

# Need Ip to access to work else working

SERVERS=("localhost")
THRESHOLD=80

for SERVER in "${SERVERS[@]}"; do
	CPU=$(ssh $SERVER "top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}'")
	MEM=$(ssh $SERVER "free | grep Mem | awk '{print $3/$2 * 100}'")

	if ((${CPU%.*} > THRESHOLD )) || (( ${MEM%.*} > THRESHOLD )); then
		echo "ALERT: $SERVER CPU: $CPU%, MEM: $MEM%"
	else
		echo "$SERVER is healthy."
	fi
done
