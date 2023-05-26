#!/bin/bash
# schwarz, rot, grün, gelb, blau, magenta, cyan und weiß: 30, 31, 32, 33, 34, 35, 36, 37.

# inspired by: Ali A.

# Discovering and exracting
DC="Hamburg single-site"
OS=$(grep -E '^VERSION=' /etc/os-release | cut -d "\"" -f 2)
UP=$(uptime -p | awk '{for(i=2;i<=NF;i++){printf "%s ", $i}}')
IPv4_mgmt=$(ip address show eth0 | grep global | awk '{print $2}')
IPv4_lo=$(ip address show lo | grep global | awk '{print $2}' | head -n 1)

# Banner
echo -e " \e[0;32m
########   #######   ######  ##    ## ######## ######## 
##     ## ##     ## ##    ## ##   ##  ##          ##    
##     ## ##     ## ##       ##  ##   ##          ##    
########  ##     ## ##       #####    ######      ##    
##   ##   ##     ## ##       ##  ##   ##          ##    
##    ##  ##     ## ##    ## ##   ##  ##          ##    
##     ##  #######   ######  ##    ## ########    ##    
\e[0;33m                                                        
######## ##     ## ########  ######## ##       ######## 
   ##    ##     ## ##     ##    ##    ##       ##       
   ##    ##     ## ##     ##    ##    ##       ##       
   ##    ##     ## ########     ##    ##       ######   
   ##    ##     ## ##   ##      ##    ##       ##       
   ##    ##     ## ##    ##     ##    ##       ##       
   ##     #######  ##     ##    ##    ######## ########\e[0m
"

echo -e "  You are working now in: \e[0;32m" DC Site: $DC" \e[0m"
echo -e "  On device:              \e[0;32m" $HOSTNAME" \e[0m"
echo -e "  Operating System:       \e[0;34m" $OS" \e[0m"
echo -e "  Kernel:                 \e[0;34m" $KERNEL" \e[0m"
echo -e "  Uptime:                 " $UP
echo -e "  Managemnt via eth0:     " $IPv4_mgmt
echo -e "  Loopback:               " $IPv4_lo
echo " "
