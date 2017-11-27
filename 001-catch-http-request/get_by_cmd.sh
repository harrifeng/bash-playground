function get_cmd_num() {
    logsuffix='.log'
    filename=$1$logsuffix
    minimumsize=1000

    if [[ $(find $filename -type f -size +${minimumsize}c 2>/dev/null) ]]; then
        $1 is already enough
    else
        tcpdump -c 100000 -s 0 -i eth0 port 5000 -A | grep "cmd\":${1}" >>  ${filename}
    fi
}

get_cmd_num 100
