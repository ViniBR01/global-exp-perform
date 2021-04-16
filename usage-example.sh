#! /bin/bash

# Example of usage to guide development and future usage

# Set parameters (fixed or an array of values)
filesize = 300000
traffic_load = (0.1 0.2 0.3 0.5 0.7 0.9)
upload_ratio = 0.5

MCS = 8
uplink_mode = (1 4 5)
AP_antennas = 4
max_aggregation = 40000
AP_priority = 4

dir_name = "test_experiment"

#Call main script passing all parameters
echo "Start of all experiments."
./main.sh filesize traffic_load upload_ratio MCS uplink_mode AP_antennas max_aggregation AP_priority

wait

echo "End of all experiments."