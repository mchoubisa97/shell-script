#!/bin/bash

DIR="/var/log"

if [ -d "$DIR" ]; then
	echo "Logs directory found."
else
	echo "Logs directory missing - creating one now."
	mkdir -p "$DIR"
fi
