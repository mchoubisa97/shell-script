#!/bin/bash

check_cpu_usage() {
	cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
	echo "CPU Usage: ${cpu}%"
}

check_memory_usage() {
	free -m | awk 'NR==2{printf "Memory Usage: %.2f%%\n", $3*100/$2}'
}

check_disk_space() {
	df -h | awk '$NF=="/"{printf "Disk Usage: %s\n", $5}'
}

health_check() {
	echo "==== Server Health Check ===="
	check_cpu_usage
	check_memory_usage
	check_disk_space
}

health_check
