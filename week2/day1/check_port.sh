#!/bin/bash
#Script: Check_port.sh
#Author: Muhammad Mahbub Hassan
#Purpose: Check if a given port is in use

read -p "Enter port number to check: " port

if [[ ! "$port" =~ ^[0-9]+$ ]]; then
  echo "Invalid port number. Please enter a numeric value."
  exit 1
fi

if ss -tuln | grep -q ":$port "; then
  echo "Port $port is currently in use."
else
  echo "Port $port is available."
fi


