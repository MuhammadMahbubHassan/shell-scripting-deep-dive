#!/bin/bash

# Function to list system users
list_users() {
  echo "👥 Listing users from /etc/passwd:"
  
  # Loop through each line in /etc/passwd
  while IFS=: read -r username _; do
    echo "- $username"
  done < /etc/passwd
}

# Call function
list_users

