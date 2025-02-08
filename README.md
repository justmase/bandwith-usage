# 🚀 Bandwidth Usage Monitor

![Monitoring](https://img.shields.io/badge/Monitoring-Network-brightgreen?style=flat-square)
![Bash](https://img.shields.io/badge/Made%20With-Bash-blue?style=flat-square)

A simple and effective real-time bandwidth usage monitoring script using `vnstat`.

## 📌 Features
- 🚀 Real-time bandwidth usage monitoring
- 📜 Logs bandwidth data to `/var/log/bandwidth_usage.log`
- 📊 Displays received and transmitted data in MB
- ⏳ Runs continuously for real-time updates

## 🔧 Installation
```bash
sudo apt update && sudo apt install vnstat -y
```

## 🚀 Usage
```bash
chmod +x bandwidth_monitor.sh
sudo ./bandwidth_monitor.sh
```

## 📜 Example Output
```
--- Bandwidth Usage Monitor ---
Received: 12 MB, Transmitted: 8 MB
-------------------------------
```

## 📜 License
MIT License. Feel free to use and modify.

---
✅ **Stay informed about your network usage!**
