#!/bin/bash

signal_caught() {
  echo "Script cancellation...."
  echo "Script cancellation succeeded...."
  exit 0
 }


while true; do sleep 1; echo .; done
