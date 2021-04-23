#! /bin/bash

# Example of usage to guide development and future usage

# Set parameters (fixed param or a string array of values)
# use semicolon to separate values in a string array

# Parameters that may vary:
filesize='300000' # bytes
AP_priority='4'
upload_ratio='0.5'
MCS='4'
max_aggregation='max' # "max" or number of bytes
AP_antennas='4'
uplink_mode='1;4;5' # 1-SU, 4-reports, 5-genie
traffic_load='10;30;50;70;90' # Percentage
repeat='1' # For n runs, use array notation: '1;2;3;...;n'

# Parameters that are always fixed:
transport='tcp' # Choose between 'tcp' and 'udp'
exp_length='300' # in seconds
dir_name='test_experiment'

#Call main script passing all parameters
echo "Start of all experiments."

./main.sh -f $filesize -t $traffic_load -r $upload_ratio \
          -m $MCS -u $uplink_mode -a $AP_antennas \
          -g $max_aggregation -p $AP_priority -n $dir_name \
          -e $repeat -x $transport -l $exp_length

wait

echo "End of all experiments."