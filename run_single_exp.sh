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

# echo " "
# echo "Received the following input arguments at run_single_exp:"
# echo "File size = $filesize"
# echo "Traffic load = ${traffic_load[@]}"
# echo "Upload ratio = ${upload_ratio[@]}"
# echo "MCS = ${MCS[@]}"
# echo "Uplink mode = ${uplink_mode[@]}"
# echo "AP antennas = ${AP_antennas[@]}"
# echo "Max aggregation = ${max_aggregation[@]}"
# echo "AP priority = ${AP_priority[@]}"
# echo "Directory name = ${path[@]}"
# echo " "


echo "Running single experiment: $filesize $AP_priority $upload_ratio \
$MCS $max_aggregation $AP_antennas $uplink_mode $traffic_load $path"
sudo -u vini-desktop mkdir -p $path
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 4 40000 &
#sudo -u vini-desktop ./run_experiment_Mix.sh
#echo "Test running 32 stations..."
#fix-me: call script that runs 32 simultaneous stations
#e.g., 
sudo -u vini-desktop ./run_simult_32.sh $size $priority $ratio $mcs $aggreg $antenna $mode $load $path
# sudo -u vini-desktop ./run_simult_32.sh 300000 4 0 8 40000 4 5 20 ./example
pkill nf-queue

