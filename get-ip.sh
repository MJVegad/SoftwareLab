#!/bin/bash

# Write a SINGLE LINE bash command to get the IP address of your linux
# machine's eth0 interface.  The output should correspond to the
# relevant line in the output of the ifconfig command.

ifconfig | grep -i "inet addr" | head -1 | cut -d " " -f 11,12
