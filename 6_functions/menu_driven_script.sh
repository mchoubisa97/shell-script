#!/bin/bash

show_date() { date; }
show_uptime() { uptime; }
show_disk_usage() { df -h; }

echo "Select an option:"
echo "1. Show Date"
echo "2. Show Uptime"
echo "3. Show Disk Usage"

read -p "Enter choice: " choice

case $choice in
	1) show_date ;;
	2) show_uptime ;;
	3) show_disk_usage ;;
	*) echo "Invalid choice" ;;
esac
