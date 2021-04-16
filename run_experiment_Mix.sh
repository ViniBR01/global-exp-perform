#! /bin/bash

#Script to run larger experiments using the python3 wrapper of iperf3

filesize=300000 #B
runtime=300 #sec
mininterval=0.00 #sec
maxinterval=0.41 #sec
uploadratio=0.5

mkdir 00_41
mkdir 00_62
mkdir 00_94
mkdir 01_42
mkdir 01_89
mkdir 02_84
mkdir 03_79
mkdir 05_69
mkdir 11_38
mkdir 56_89

echo "Starting upload experiments! interval = 0.41s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_41/Exp-32sta-300s-300kB-00_41sec-0sec-sta32.txt &

wait

maxinterval=0.62 #sec

echo "Starting experiments! interval = 0.62s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_62/Exp-32sta-300s-300kB-00_62sec-0sec-sta32.txt &

wait

maxinterval=0.94 #sec

echo "Starting experiments! interval = 0.94s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 00_94/Exp-32sta-300s-300kB-00_94sec-0sec-sta32.txt &

wait

maxinterval=1.42 #sec

echo "Starting experiments! interval = 1.42s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_42/Exp-32sta-300s-300kB-01_42sec-0sec-sta32.txt &

wait

maxinterval=1.89 #sec

echo "Starting experiments! interval = 1.89s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 01_89/Exp-32sta-300s-300kB-01_89sec-0sec-sta32.txt &

wait

maxinterval=2.84 #sec

echo "Starting experiments! interval = 2.84s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 02_84/Exp-32sta-300s-300kB-02_84sec-0sec-sta32.txt &

wait

maxinterval=3.79 #sec

echo "Starting experiments! interval = 3.79s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 03_79/Exp-32sta-300s-300kB-03_79sec-0sec-sta32.txt &

wait

maxinterval=5.69 #sec

echo "Starting experiments! interval = 5.69s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 05_69/Exp-32sta-300s-300kB-05_69sec-0sec-sta32.txt &

wait

maxinterval=11.38 #sec

echo "Starting experiments! interval = 11.38s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 11_38/Exp-32sta-300s-300kB-11_38sec-0sec-sta32.txt &

wait

maxinterval=56.89 #sec

echo "Starting experiments! interval = 56.89s"

#python3 main.pys
python3 main.py -i 192.168.0.102 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta01.txt &
python3 main.py -i 192.168.0.103 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta02.txt &
python3 main.py -i 192.168.0.104 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta03.txt &
python3 main.py -i 192.168.0.105 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta04.txt &
python3 main.py -i 192.168.0.106 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta05.txt &
python3 main.py -i 192.168.0.107 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta06.txt &

python3 main.py -i 192.168.0.202 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta07.txt &
python3 main.py -i 192.168.0.203 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta08.txt &
python3 main.py -i 192.168.0.204 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta09.txt &
python3 main.py -i 192.168.0.205 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta10.txt &
python3 main.py -i 192.168.0.206 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta11.txt &
python3 main.py -i 192.168.0.207 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta12.txt &

python3 main.py -i 192.168.0.132 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta13.txt &
python3 main.py -i 192.168.0.133 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta14.txt &
python3 main.py -i 192.168.0.134 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta15.txt &
python3 main.py -i 192.168.0.135 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta16.txt &
python3 main.py -i 192.168.0.136 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta17.txt &
python3 main.py -i 192.168.0.137 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta18.txt &
python3 main.py -i 192.168.0.138 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta19.txt &
python3 main.py -i 192.168.0.139 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta20.txt &
python3 main.py -i 192.168.0.140 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta21.txt &
python3 main.py -i 192.168.0.141 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta22.txt &

python3 main.py -i 192.168.0.162 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta23.txt &
python3 main.py -i 192.168.0.163 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta24.txt &
python3 main.py -i 192.168.0.164 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta25.txt &
python3 main.py -i 192.168.0.165 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta26.txt &
python3 main.py -i 192.168.0.166 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta27.txt &
python3 main.py -i 192.168.0.167 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta28.txt &
python3 main.py -i 192.168.0.168 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta29.txt &
python3 main.py -i 192.168.0.169 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta30.txt &
python3 main.py -i 192.168.0.170 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta31.txt &
python3 main.py -i 192.168.0.171 -f $filesize -l $runtime -g $mininterval -t $maxinterval -m $uploadratio > 56_89/Exp-32sta-300s-300kB-56_89sec-0sec-sta32.txt &

wait

echo "bye."
