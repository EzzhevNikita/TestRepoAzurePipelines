#!/bin/bash

signal_caught() {
    touch /tmp/signal-catched-at-`date +%H:%M:%S`
    exit 1
}
trap signal_caught EXIT
while true; do sleep 1; echo .; done
