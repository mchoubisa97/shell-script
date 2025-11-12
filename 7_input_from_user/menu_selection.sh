#!/bin/bash

echo "Select and option:"
echo "1. Start Server."
echo "2. Stop Server."
echo "3. Restart Server."
read -p "Enter choice [1-3]: " choice

case $choice in
	1) echo "Starting Server...";;
	2) echo "Stopping Server...";;
	3) echo "Restarting Server...";;
	*) echo "Invalid choice";;
esac
