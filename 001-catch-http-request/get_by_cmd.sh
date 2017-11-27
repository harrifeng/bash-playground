function get_cmd_num() {
    logsuffix='.log'
    filename=$1$logsuffix
    minimumsize=300k

    if [[ $(find $filename -type f -size +${minimumsize} 2>/dev/null) ]]; then
        echo "$1 is already enough--->"
    else
        sudo tcpdump -c 10000 -s 0 -i eth0 port 5000 -A | grep "cmd\":${1}" >>  ${filename}
    fi
}

for k in {1..100}
do
    declare -a arr=(100 102 200 201 202 203 204 300 301 400 401 402 500 501 503 504 505 601 801)

    for i in "${arr[@]}"
    do
        get_cmd_num "$i"
    done
done
