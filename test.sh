#!/bin/bash

signal_caught() {
  echo "Script cancellation...."
  echo "Script cancellation succeeded...."
  exit 0
 }

trap signal_caught SIGINT SIGTERM
while true; do sleep 1; echo .; done
