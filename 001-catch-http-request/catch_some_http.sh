# !/bin/bash
tcpdump -c 10000 -s 0 -i eth0 port 5000 -A | grep ":101,\|:302,\|:401,\|:701,\|:702" >> ret.log
