#!/bin/bash
set -euo pipefail

# Read user input interactively
read -p "Enter your name: " username
read -sp "Enter your password (input will be hidden): " userpass
echo

echo "👋 Hello, $username!"
echo "Your password has been securely captured (but not shown)."

