# !/bin/bash
tcpdump -c 10000 -s 0 -i eth0 port 5000 -A | grep "cmd\":101,\|cmd\":302,\|cmd\":401,\|cmd\":701\|cmd\":702" >> ret.log
