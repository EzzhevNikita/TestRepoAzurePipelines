#!/bin/bash

ps auxf
signal_caught() {
    echo "Script canceled...."
    exit 1
}

trap signal_caught SIGINT SIGTERM
while true; do sleep 1; echo .; done

$SHELL
