
get_system_info(){
    # Basic system info
    HOSTNAME=$(uname -n)
    CURRENT_USER=$USER
    OS=$(lsb_release -d 2>/dev/null | cut -f2-)

    # Date and uptime
    DATE=$(date | awk '{print $2, $3, $4, $5}')
    UPTIME=$(uptime -p)
    UPTIME_SEC=$(awk '{print int($1)}' /proc/uptime)

    # Timezone (Local UTC +03)
    local location
    local time
    location=$(timedatectl show --property=Timezone --value)
    time=$(date +%:z | sed 's/:00//')
    TIMEZONE="$location UTC $time"

    # Network info
    IP=$(hostname -I | awk '{print $1}')
    GATEWAY=$(ip route | grep default | awk '{print $3}')

    # Convert CIDR prefix (e.g. /24) to subnet mask (255.255.255.0)
    local network_prefix 
    network_prefix=$(ip -4 addr show scope global | grep inet | awk '{print $2}' | head -n1 | cut -d/ -f2)
    local mask
    mask=$(printf "%d.%d.%d.%d\n" \
        $(( (0xffffffff << (32-network_prefix)) >> 24 & 0xff )) \
        $(( (0xffffffff << (32-network_prefix)) >> 16 & 0xff )) \
        $(( (0xffffffff << (32-network_prefix)) >> 8 & 0xff )) \
        $(( (0xffffffff << (32-network_prefix)) & 0xff )) )
    MASK=$mask

    # Memory (GB)
    RAM_TOTAL=$(free -k | grep Mem: | awk '{printf "%.3f GB", $2/1024/1024}')
    RAM_USED=$(free -k | grep Mem: | awk '{printf "%.3f GB", $3/1024/1024}')
    RAM_FREE=$(free -k | grep Mem: | awk '{printf "%.3f GB", $4/1024/1024}')

    # Disk space (MB)
    SPACE_ROOT=$(df / | awk 'NR==2 {printf "%.2f MB", $2/1024}')
    SPACE_ROOT_USED=$(df / | awk 'NR==2 {printf "%.2f MB", $3/1024}')
    SPACE_ROOT_FREE=$(df / | awk 'NR==2 {printf "%.2f MB", $4/1024}')
}