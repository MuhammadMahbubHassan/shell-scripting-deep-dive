#!/bin/bash
set -euo pipefail

trap 'echo "Disk check failed. Check your command or syntax."; exit 1' ERR

threshold=80  # warning threshold in percentage

# Get usage for root partition
usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -ge "$threshold" ]; then
  echo "⚠️ Disk usage is high: ${usage}%"
else
  echo "✅ Disk usage is under control: ${usage}%"
fi

