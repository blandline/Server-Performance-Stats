#!/bin/bash

echo "=============================="
echo "   SERVER PERFORMANCE STATS   "
echo "=============================="
echo

# ---------------- CPU Usage ----------------
echo "CPU Usage:"
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
echo "Total CPU Usage: $CPU_USAGE%"
echo

# ---------------- Memory Usage ----------------
echo "Memory Usage:"
free -h
TOTAL_MEM=$(free | awk '/Mem:/ {print $2}')
USED_MEM=$(free | awk '/Mem:/ {print $3}')
MEM_PERCENT=$(echo "scale=2; ($USED_MEM/$TOTAL_MEM)*100" | bc)
echo "Memory Used: $MEM_PERCENT%"
echo

# ---------------- Disk Usage ----------------
echo "Disk Usage:"
df -h /
echo

# ---------------- Top Processes by CPU ----------------
echo "Top 5 Processes by CPU Usage:"
ps aux --sort=-%cpu | head -n 6
echo

# ---------------- Top Processes by Memory ----------------
echo "Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6
echo

echo "=============================="
echo "       END OF REPORT          "
echo "=============================="
