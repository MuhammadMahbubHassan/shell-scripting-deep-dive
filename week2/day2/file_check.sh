#!/bin/bash

# Function to check file status
check_file() {
  local file=$1

  # Check if file exists
  if [ ! -e "$file" ]; then
    echo "❌ File '$file' does not exist."
    return 1
  fi

  # Check read and write permissions
  [ -r "$file" ] && echo "📖 File is readable." || echo "🚫 File is not readable."
  [ -w "$file" ] && echo "✏️ File is writable." || echo "🚫 File is not writable."
}

# Prompt user for filename
read -p "Enter filename to check: " filename

# Call function
check_file "$filename"

