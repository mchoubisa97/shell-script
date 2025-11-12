#!/bin/bash

# -s hides the input (usefull for password or tokens)

read -sp "Enter you AWS Secret Key: " secret
echo
echo "Secret captured (hidden for security)."
# echo "$secret"
