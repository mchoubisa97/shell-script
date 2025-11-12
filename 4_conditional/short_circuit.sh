#!/bin/bash

set -euo pipefail

mkdir -p /home/ubuntu/logs && echo "Created logs dir" || echo "Could not create logs dir because it is already exists"

# Equivalent to:
# if mkdir -p /home/ubuntu/logs; then echo "Created"; else echo "Could not create"; fi
