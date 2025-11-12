#!/bin/bash

while true; do
	clear
	echo "=== DevOps Utility Menu ==="
	echo "1. Check Server Health"
	echo "2. View Disk Usage"
	echo "3. List Running Docker Containers"
	echo "4. Exit"
	read -p "Enter choice: " choice

	case $choice in
		1) echo "Checking server health..."; uptime; sleep 2;;
		2) echo "Disk usage:"; df -h; sleep 2;;
		3) echo "Docker Containers:"; docker ps; sleep 2;;
		4) echo "Goodbye!"; exit 0;;
		*) echo "invalid choice, try again."; sleep 2;;
	esac
done
