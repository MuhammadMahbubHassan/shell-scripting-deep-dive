#!/bin/bash

# Function to simulate starting a service
start_service() {
  echo "🚀 Starting service..."
  sleep 1
  echo "✅ Service started."
}

# Function to simulate stopping a service
stop_service() {
  echo "🛑 Stopping service..."
  sleep 1
  echo "✅ Service stopped."
}

# Function to show status
status_service() {
  echo "📊 Service status: running (simulated)"
}

# Use case to handle input argument
case "$1" in
  start)
    start_service
    ;;
  stop)
    stop_service
    ;;
  status)
    status_service
    ;;
  *)
    echo "❓ Usage: $0 {start|stop|status}"
    exit 1
    ;;
esac

