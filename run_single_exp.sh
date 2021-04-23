#! /bin/bash

# Script to run single experiment given all parameters
# For usage, see usage-example.sh. Do not modify this file for new experiments.

# Receive input arguments
size=$1
priority=$2
ratio=$3
mcs=$4
aggreg=$5
antenna=$6
mode=$7
load=$8
path=$9
transport=${10}
length=${11}

#convert "max" aggregation option based on mcs:
echo "${aggreg}"
if [[ "${aggreg}" == "max" ]]; then
    case $mcs in

        0 )
            aggreg=3300
            ;;

        1 )
            aggreg=6600
            ;;

        2 )
            aggreg=10000
            ;;

        3 )
            aggreg=13300
            ;;

        4 )
            aggreg=20000
            ;;

        5 )
            aggreg=26700
            ;;

        6 )
            aggreg=30000
            ;;

        7 )
            aggreg=33300
            ;;

        8 )
            aggreg=40000
            ;;

        9 )
            aggreg=44500
            ;;

    esac
    echo "Replaced 'max' by $aggreg"
fi

# echo " "
# echo "Received the following input arguments at run_single_exp:"
# echo "File size = $size"
# echo "Traffic load = ${load[@]}"
# echo "Upload ratio = ${ratio[@]}"
# echo "MCS = ${mcs[@]}"
# echo "Uplink mode = ${mode[@]}"
# echo "AP antennas = ${antenna[@]}"
# echo "Max aggregation = ${aggreg[@]}"
# echo "AP priority = ${priority[@]}"
# echo "Directory name = ${path[@]}"
# echo "Transport choice = ${transport[@]}"
# echo "Experiment length = ${length[@]}"
# echo " "


echo "Running single experiment: $filesize $AP_priority $upload_ratio \
$MCS $max_aggregation $AP_antennas $uplink_mode $traffic_load $path"

sudo -u vini-desktop mkdir -p $path

exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 $mcs $mode $antenna $aggreg &

sudo -u vini-desktop ./run_simult_32.sh $size $priority $ratio $mcs $aggreg $antenna $mode $load $path $transport $length

pkill nf-queue

# Copy log file to destination folder inside of $path
sudo -u vini-desktop mkdir "${path}perform"
sudo -u vini-desktop cp ./logs/log.txt "${path}perform/log.txt"