#!/bin/bash

set -e

# Stop previously running app if exists
if [ -f /home/ec2-user/app/app.pid ]; then
  PID=$(cat /home/ec2-user/app/app.pid)
  if ps -p $PID > /dev/null 2>&1; then
    kill -9 $PID || true
    sleep 2
  fi
  # Force remove with sudo in case of permission issues
  sudo rm -f /home/ec2-user/app/app.pid
else
  # Fallback: kill any running app.py
  pkill -9 -f "python3 app.py" || true
fi
