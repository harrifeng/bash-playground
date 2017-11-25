# !/bin/bash
nohup tcpdump -c 1000000 -s 0 -i eth0 port 5000 -A
