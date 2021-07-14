#!/bin/bash

# I use this with mosyle to output how many days since last reboot, which seems to be what you wanted to achieve?

lastBootRaw=$(sysctl kern.boottime | awk -F'[= |,]' '{print $6}')

today=$(date +%s)

diffDays=$(( (today - lastBootRaw) / 86400 ))

echo $diffDays
