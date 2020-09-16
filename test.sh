#!/bin/bash

ps auxf
signal_caught() {
    echo "Script canceled...."
    exit 1
}

trap 'exit 0' TERM
while true; do sleep 1; echo .; done
