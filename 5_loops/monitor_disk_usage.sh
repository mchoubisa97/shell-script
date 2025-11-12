#!/bin/bash

for mount in $(df -h | awk '{print $6}' | tail -n +2)
do
	usage=$(df -h | awk -v mnt="$mount" '$6==mnt {print $5}')
	echo "Mount points: $mount → Usage: $usage"
done
