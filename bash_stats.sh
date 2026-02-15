#!/bin/bash

echo "---CPU Usage---"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage: "100-$8 "%"}'

echo "---Memory Usage---"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%2f%%)\n", $3, $2, $3*100/$2}'

echo "---Disk Usage---"
df -h | awk 'NR==2{printf "Used> %s / Total: %s (%s)\n", $3, $2, $5}'

echo -e "\n--- TOP 5 CPU PROCESSES ---"
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6

echo -e "\n--- TOP 5 MEMORY PROCESSES ---"
ps -eo pid,cmd,%mem --sort=-%mem | head -n 6

