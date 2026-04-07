#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}')
	echo "$TIMESTAMP: Cpu Usage: $CPU_USAGE"

MEMORY_USAGE=$(free -h | awk '/Mem:/ {print "Used: "$3" / Total: "$2" ("$3/$2*100"% )"}')
	echo "$TIMESTAMP: Memory usage: $MEMORY_USAGE"

DISK_USAGE=$(df -h --total | awk '/total/ {print "Used: "$3" / Total: "$2" ("$5" used)"}')
	echo "$TIMESTAMP: Disk Usage: $DISK_USAGE"
