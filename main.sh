#! /bin/bash

# Main script to run global experiments
# For usage, see usage-example.sh. Do not modify this file for new experiments.

while getopts ":f:t:r:m:u:a:g:p:n:" opt; do
    case ${opt} in
        f )
            filesize=$OPTARG
            echo "Arg filesize = ${filesize}"
            ;;
        t )
            traffic_load=$OPTARG
            echo "Arg traffic_load = ${traffic_load}"
            ;;
        r )
            upload_ratio=$OPTARG
            ;;
        m )
            MCS=$OPTARG
            ;;
        u )
            uplink_mode=$OPTARG
            ;;
        a )
            AP_antennas=$OPTARG
            ;;
        g )
            max_aggregation=$OPTARG
            ;;
        p )
            AP_priority=$OPTARG
            ;;
        n )
            dir_name=$OPTARG
            echo "Arg dirname = ${dir_name}"
            ;;
        \? )
            echo "Invalid option. Usage: check script file."
            ;;
        : )
            echo "Requires an argument."
            ;;
    esac
done



exit 0