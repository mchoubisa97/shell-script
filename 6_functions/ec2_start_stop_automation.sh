#!/bin/bash

manage_ec2() {
	action=$1
	instance_id=$2

	if [[ "$action" == "start" ]]; then
		aws ec2 start-instances --instance-ids "$instance_id"
	elif [[ "$action" == "stop" ]]; then
		aws ec2 stop-instances --instance-ids "$instance_id"
	else
		echo "Usage: $0 {start|stop} <instance-id>"
	fi
}

# manage_ec2 start i-07027750f0ae53a3c
# manage_ec2 start i-0b9a603d86c8fae21

manage_ec2 stop i-07027750f0ae53a3c
manage_ec2 stop i-0b9a603d86c8fae21

