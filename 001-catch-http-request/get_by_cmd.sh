function get_cmd_num() {
    logsuffix='.log'
    filename=$1$logsuffix
    minimumsize=10k

    if [[ $(find $filename -type f -size +${minimumsize} 2>/dev/null) ]]; then
        $1 is already enough
    else
        sudo tcpdump -c 10000 -s 0 -i enp3s0 port 5000 -A | grep "cmd\":${1}" >>  ${filename}
    fi
}

for i in {1..100}
do
    declare -a cmd_list=("100" "200")
    for i in "{$cmd_list[@]}"
    do
        get_cmd_num "$i"
    done
done
