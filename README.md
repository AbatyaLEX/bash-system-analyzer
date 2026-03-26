# Bash-system-analyzer
Bash scripts for monitoring system and analyzing directories on Linux.
This collection of scripts provides detailed directory statistics, system information, and customizable colorized output. Suitable for Linux environments.

---

## Features

- Collect and display detailed system information:
  - Hostname, User, OS, Date, Uptime, Timezone
  - Network: IP, Mask, Gateway
  - RAM usage and Disk usage
- Save system information to a timestamped file
- Analyze directories:
  - Total folders and files
  - File type counts (config, text, executable, log, archive)
  - Top 5 largest folders
  - Top 10 largest files with type
  - Top 10 largest executable files with MD5 hash
- Colorized output for better readability
- Fully modular and reusable Bash scripts

---

## Project Structure

- **color_config/** - uses predefined settings from `color.conf` for colorized output
- **color_system/** - allows custom colors via command-line parameters 
- **dir_analyzer/** - directory analysis scripts
- **lib/** - shared libraries
- **system_info/** - scripts for collecting system information (without colors)
- **utils/** - utility functions

---

## Requirements

- Linux OS (tested on Ubuntu 24.04.4 LTS)
- Bash 5.2
- Utilities: find, md5sum, ip, free, df, etc.

---

## Usage

### System information

Collects and displays system information. Optionally saves it to a timestamped file.
```bash
$ cd system_info
$ ./main.sh
```
Output includes hostname, user, OS, date, uptime, timezone, network info, RAM, and disk usage.

### Directory Analyzer

Analyze a directory and display detailed statistics.
```bash
$ cd dir_analyzer
$ ./main.sh /path/to/directory
```
Prints:

1) Total folders (including nested)
2) Total files
3) Count by type (config, text, executable, log, archive)
4) Top 5 largest folders
5) Top 10 largest files with type
6) Top 10 largest executable files with MD5 hash

### Colorized System info (config-driven)

Displays system information in colors defined in color_config/color.conf.
```bash
$ cd color_config
$ ./main.sh
```
The script reads values from color.conf to set column backgrounds and font colors.

### Color System (custom colors)

Allows user-defined colors for the system info output.
```bash
$ cd color_system
$ ./main.sh <BG_NAME> <FONT_NAME> <BG_VAL> <FONT_VAL>
```
Colors are numbers 1–6 (white, red, green, blue, purple, black)
Example: ./main.sh 5 2 3 5
Validates that background and font colors are not the same