#!/bin/bash

FILE="/home/ubuntu/shell-course/5_loops"

if [ -f "$FILE" ]; then
	echo "✅ File $FILE exists."
else
	echo "❌ File $FILE do not exists."
fi
