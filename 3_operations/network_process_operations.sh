#!/bin/bash

PORT=80
if netstat -tuln | grep -q ":$PORT"; then
	echo "Port $PORT is listening"
else
	echo "Port $PORT is not in use"
fi
