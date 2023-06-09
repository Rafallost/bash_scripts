#!/bin/bash

log_file="log.txt"

case $1 in
  start)
    if [ -z "$2" ]; then
      echo "Enter the name of the program as the second argument"
      exit 1
    fi

    program=$2
    echo "Program $program launched: $(date)" >> "$log_file"
    ;;
  stop)
    if [ -z "$2" ]; then
      echo "Enter the name of the program as the second argument"
      exit 1
    fi

    program=$2
    killall "$program" >/dev/null 2>&1
    echo "Program $program stopped: $(date)" >> "$log_file"
    ;;
  *)
    echo "Unknown command. Available options: start, stop"
    exit 1
    ;;
esac