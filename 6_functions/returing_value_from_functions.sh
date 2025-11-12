#!/bin/bash

get_server_ip(){
	hostname -I | awk '{print $1}'
}

server_ip=$(get_server_ip)
echo "Server IP: $server_ip"
