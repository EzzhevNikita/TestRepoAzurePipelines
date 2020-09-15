#!/bin/bash

signal_caught() {
    echo "Script canceled"
    touch /tmp/signal-catched-at-`date +%H:%M:%S`
    exit 1
}
trap signal_caught SIGHUP SIGINT SIGQUIT SIGTERM SIGKILL EXIT
while true; do sleep 1; echo .; done
