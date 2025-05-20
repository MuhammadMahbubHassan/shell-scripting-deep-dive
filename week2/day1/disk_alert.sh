#!/bin/bash
#Script: disk_alert.sh
#Author: Muhammmad Mahbub Hassan
#Purpose: Check root (/) disk usage and alert if above 80%


THRESHOLD=80

usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -ge "$THRESHOLD" ]; then
  echo "Warning: Disk usage is at ${usage}%!"

else
  echo "Disk usage is OK: ${usage}%"

fi
