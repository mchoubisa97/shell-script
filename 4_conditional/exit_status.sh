#!/bin/bash

set -euo pipefail
if systemctl is-active --quite nginx; then
	echo "nginx running"
else
	echo "nginx is not running or installed"
	#systemctl start nginx  <- if installed
fi
