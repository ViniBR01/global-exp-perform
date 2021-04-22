#! /bin/bash

# Script to run all simlutaenous traffic for a single experiment given all parameters
# For usage, see usage-example.sh. Do not modify this file for new experiments.

#test me: ./run_simult_32.sh 300000 4 0 8 40000 4 5 20 ./example tcp 5

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
transport=${10}
length=${11}

runtime=$length

# echo " "
# echo "Received the following input arguments at run_simlut_32:"
# echo "File size = ${filesize[@]}"
# echo "Traffic load = ${traffic_load[@]}"
# echo "Upload ratio = ${upload_ratio[@]}"
# echo "MCS = ${MCS[@]}"
# echo "Uplink mode = ${uplink_mode[@]}"
# echo "AP antennas = ${AP_antennas[@]}"
# echo "Max aggregation = ${max_aggregation[@]}"
# echo "AP priority = ${AP_priority[@]}"
# echo "Directory name = ${path[@]}"
# echo " "

# exit

echo "Experiment running 32 stations..."
python3 tcp.py -i 192.168.0.102 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta01.txt" &
python3 tcp.py -i 192.168.0.103 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta02.txt" &
python3 tcp.py -i 192.168.0.104 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta03.txt" &
python3 tcp.py -i 192.168.0.105 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta04.txt" &
python3 tcp.py -i 192.168.0.106 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta05.txt" &
python3 tcp.py -i 192.168.0.107 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta06.txt" &

python3 tcp.py -i 192.168.0.202 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta07.txt" &
python3 tcp.py -i 192.168.0.203 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta08.txt" &
python3 tcp.py -i 192.168.0.204 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta09.txt" &
python3 tcp.py -i 192.168.0.205 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta10.txt" &
python3 tcp.py -i 192.168.0.206 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta11.txt" &
python3 tcp.py -i 192.168.0.207 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta12.txt" &

python3 tcp.py -i 192.168.0.132 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta13.txt" &
python3 tcp.py -i 192.168.0.133 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta14.txt" &
python3 tcp.py -i 192.168.0.134 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta15.txt" &
python3 tcp.py -i 192.168.0.135 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta16.txt" &
python3 tcp.py -i 192.168.0.136 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta17.txt" &
python3 tcp.py -i 192.168.0.137 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta18.txt" &
python3 tcp.py -i 192.168.0.138 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta19.txt" &
python3 tcp.py -i 192.168.0.139 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta20.txt" &
python3 tcp.py -i 192.168.0.140 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta21.txt" &
python3 tcp.py -i 192.168.0.141 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta22.txt" &

python3 tcp.py -i 192.168.0.162 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta23.txt" &
python3 tcp.py -i 192.168.0.163 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta24.txt" &
python3 tcp.py -i 192.168.0.164 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta25.txt" &
python3 tcp.py -i 192.168.0.165 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta26.txt" &
python3 tcp.py -i 192.168.0.166 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta27.txt" &
python3 tcp.py -i 192.168.0.167 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta28.txt" &
python3 tcp.py -i 192.168.0.168 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta29.txt" &
python3 tcp.py -i 192.168.0.169 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta30.txt" &
python3 tcp.py -i 192.168.0.170 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta31.txt" &
python3 tcp.py -i 192.168.0.171 -f $filesize -l $runtime -t $traffic_load -m $upload_ratio -r $MCS -a $AP_antennas > "${path}result-sta32.txt" &

wait