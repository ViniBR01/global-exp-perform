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
dir_name=$9

echo "Running single experiment: $filesize $AP_priority $upload_ratio \
$MCS $max_aggregation $AP_antennas $uplink_mode $traffic_load $dir_name"
sudo -u vini-desktop mkdir -p $dir_name
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 4 40000 &
#sudo -u vini-desktop ./run_experiment_Mix.sh
echo "Test running 32 stations..."
pkill nf-queue

