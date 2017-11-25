# !/bin/bash
tcpdump -c 1000000 -s 0 -i eth0 port 5000 -A | grep "cmd\":101,\|cmd\":302,\|cmd\":701\|cmd\":702" >> ret.log
