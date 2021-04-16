#! /bin/bash

# Example of usage to guide development and future usage

# Set parameters (fixed param or a string array of values)
# use semicolon to separate values in a string array

filesize='300000'
traffic_load='0.1;0.2;0.3;0.5;0.7;0.8'
upload_ratio='0.5'
MCS='8'
uplink_mode='1;4;5'
AP_antennas='4'
max_aggregation='40000'
AP_priority='4'
dir_name='test_experiment'

#Call main script passing all parameters
echo "Start of all experiments."

./main.sh -f $filesize -t $traffic_load -r $upload_ratio \
          -m $MCS -u $uplink_mode -a $AP_antennas \
          -g $max_aggregation -p $AP_priority -n $dir_name

wait

echo "End of all experiments."