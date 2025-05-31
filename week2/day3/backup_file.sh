#!/bin/bash
set -euo pipefail
trap 'echo "Error on line $LINENO. Exit code: $?"; exit 1' ERR

# Check for input argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

input_file="$1"
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="${input_file}_backup_$timestamp"

# Check if file exists
if [ ! -f "$input_file" ]; then
  echo "File '$input_file' does not exist."
  exit 2
fi

cp "$input_file" "$backup_file"
echo "✅ Backup created: $backup_file"

