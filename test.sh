#!/bin/bash

signal_caught_sigint() {
  echo "Script cancellation by SIGINT...."
  echo "Script cancellation succeeded...."
  exit 0
 }
 
signal_caught_sigterm() {
  echo "Script cancellation by SIGTERM...."
  echo "Script cancellation succeeded...."
  exit 0
}

trap signal_caught_sigint SIGINT

while true; do sleep 1; echo .; done
