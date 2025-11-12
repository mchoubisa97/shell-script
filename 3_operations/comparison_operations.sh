#!/bin/bash

DISK_USAGE=85
if [ $DISK_USAGE -ge 80 ]; then
	echo "Disk spack alert! Usage: $DISK_USAGE"
fi
