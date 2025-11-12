#!/bin/bash

error_exit() {
	echo "Error: $1" >&2
	exit 1
}

run_task() {
	echo "Running critical task..."
	cp -r /home/ubuntu/backup /home/ubuntu/backup_copy || error_exit "File copy failed"
}

run_task
