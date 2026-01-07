# Server Performance Stats

Server Performance Stats is a lightweight Bash script designed to analyze basic server performance metrics on any Linux system.  
The script provides a quick, readable overview of system resource usage and helps identify processes consuming the most CPU and memory.

This project is ideal for beginners learning Linux, Bash scripting, or basic server monitoring concepts.

---

## Features

- Displays total CPU usage percentage
- Shows total memory usage (used vs free, including percentage)
- Displays disk usage for the root filesystem
- Lists the top 5 processes by CPU usage
- Lists the top 5 processes by memory usage
- Uses standard Linux commands available on most servers

---

## Requirements

- A Linux-based operating system
- Bash shell
- Standard system utilities:
  - `top`
  - `free`
  - `df`
  - `ps`
  - `awk`
  - `grep`
  - `bc`

> These tools are pre-installed on most modern Linux distributions.

---

## Installation

1. Clone or download this repository
2. Navigate to the project directory
3. Make the script executable:

```bash
chmod +x server-stats.sh

```bash
./server-stats.sh

