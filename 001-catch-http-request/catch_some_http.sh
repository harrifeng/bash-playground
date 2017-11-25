# !/bin/bash
tcpdump -c 10000 -s 0 -i eth0 port 5000 -A | grep "cmd\":100" >> ret.log
