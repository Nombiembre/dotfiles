#!/bin/bash
 
ip_address=$(cat /home/michi/.config/bin/target.txt | awk '{print $1}')
machine_name=$(cat /home/michi/.config/bin/target.txt | awk '{print $2}')
 
if [ $ip_address ] && [ $machine_name ]; then
    echo "%{F#FF0000}  %{F#ffffff}$ip_address - $machine_name%{u-}"
else
    echo "%{F#FF0000}  %{F#ffffff}No target%{u-}"
fi
