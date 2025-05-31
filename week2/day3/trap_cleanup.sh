#!/bin/bash
set -euo pipefail

tmp_file="/tmp/script_tempfile.$$"

trap 'echo "🧹 Cleaning up..."; rm -f "$tmp_file"; exit' EXIT

echo "📝 Creating temp file: $tmp_file"
touch "$tmp_file"

# Simulate some work
echo "Working..."
sleep 2

echo "✅ Work completed"

