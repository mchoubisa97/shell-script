#!/bin/bash

# runs until the condition is true

until [ -f /home/ubuntu/backup ]
do
	echo "Waiting for backup to complete..."
	sleep 5
done

echo "Backup Completed ✅"
