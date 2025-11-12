#!/bin/bash

CPU_THRESHOLD=80
CURRENT_CPU=75

if [ $CURRENT_CPU -gt $CPU_THRESHOLD ]; then
	echo "CPU usage is high: $CURRENT_CPU%"
else
	echo "CPU usage is normal: $CURRENT_CPU%"
fi
