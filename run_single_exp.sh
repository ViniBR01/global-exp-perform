#! /bin/bash

# Script to run single experiment given all parameters
# For usage, see usage-example.sh. Do not modify this file for new experiments.

# Receive input arguments
filesize=$1
AP_priority=$2
upload_ratio=$3
MCS=$4
max_aggregation=$5
AP_antennas=$6
uplink_mode=$7
traffic_load=$8
path=$9

echo "Running single experiment: $filesize $AP_priority $upload_ratio \
$MCS $max_aggregation $AP_antennas $uplink_mode $traffic_load $path"
sudo -u vini-desktop mkdir -p $path
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 4 40000 &
#sudo -u vini-desktop ./run_experiment_Mix.sh
#echo "Test running 32 stations..."
#fix-me: call script that runs 32 simultaneous stations
#e.g., 
sudo -u vini-desktop ./run_simult_32.sh $size, $priority, $ratio, $mcs, $aggreg, $antenna, $mode, $load, $path
pkill nf-queue

