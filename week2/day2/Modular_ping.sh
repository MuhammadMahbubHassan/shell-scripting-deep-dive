#!/bin/bash

# Function to ping a host
ping_host() {
  local host=$1

  # Ping once and check result
  ping -c 1 "$host" &> /dev/null
  if [ $? -eq 0 ]; then
    echo "✅ $host is reachable."
  else
    echo "❌ $host is unreachable."
  fi
}

# Read a list of space-separated hosts into an array
read -p "Enter space-separated hostnames or IPs: " -a hosts

# Loop through the array and call ping_host
for host in "${hosts[@]}"; do
  ping_host "$host"
done

