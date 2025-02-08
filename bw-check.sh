#!/bin/bash

interface=$(ip route | awk '/default/ {print $5; exit}')
log_file="/var/log/bandwidth_usage.log"
echo "Monitoring bandwidth usage on interface: $interface" | tee -a "$log_file"

touch "$log_file"
while true; do
    clear
    echo "--- Bandwidth Usage Monitor ---" | tee -a "$log_file"
    vnstat -i "$interface" --live | tee -a "$log_file"
    rx_bytes=$(cat /sys/class/net/$interface/statistics/rx_bytes)
    tx_bytes=$(cat /sys/class/net/$interface/statistics/tx_bytes)
    echo "Received: $((rx_bytes / 1024 / 1024)) MB, Transmitted: $((tx_bytes / 1024 / 1024)) MB" | tee -a "$log_file"
    echo "-------------------------------" | tee -a "$log_file"
    sleep 1
done
