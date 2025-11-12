#!/bin/bash

set -euo pipefail
cmd=$1

case "$cmd" in
	start) echo "Starting service..." ;;
	stop) echo "Stopping service..." ;;
	restart) echo "Restarting service..." ;;
	status) echo "Service Status: OK" ;;
	*) echo "Usage: $0 {start|stop|restart|status}" ; exit 2 ;;
esac
