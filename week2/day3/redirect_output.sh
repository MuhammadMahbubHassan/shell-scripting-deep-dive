#!/bin/bash
set -euo pipefail

logfile="output.log"
errorfile="error.log"

# Redirect output and error to separate files
{
  echo "This is standard output"
  ls /nonexistent/path  # generates error
} >"$logfile" 2>"$errorfile"

echo "✅ Output saved to $logfile"
echo "❌ Errors saved to $errorfile"

