#! /bin/bash

# Script to run single experiment given all parameters
# For usage, see usage-example.sh. Do not modify this file for new experiments.

echo "Running single experiment: 'enter parameters here'"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 4 40000 &
#sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue

