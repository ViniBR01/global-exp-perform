#! /bin/bash

# Script to automatically run perform and then traffic, save output, and use python to process data and plot

#Single round of execution:
echo "Running experiment: Nantennas=4 | mode = 1"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 4 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode1
sudo -u vini-desktop mv 00_41 mode1/
sudo -u vini-desktop mv 00_62 mode1/
sudo -u vini-desktop mv 00_94 mode1/
sudo -u vini-desktop mv 01_42 mode1/
sudo -u vini-desktop mv 01_89 mode1/
sudo -u vini-desktop mv 02_84 mode1/
sudo -u vini-desktop mv 03_79 mode1/
sudo -u vini-desktop mv 05_69 mode1/
sudo -u vini-desktop mv 11_38 mode1/
sudo -u vini-desktop mv 56_89 mode1/
wait

#Single round of execution:
echo "Running experiment: Nantennas=4 | mode = 4"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 4 4 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode4
sudo -u vini-desktop mv 00_41 mode4/
sudo -u vini-desktop mv 00_62 mode4/
sudo -u vini-desktop mv 00_94 mode4/
sudo -u vini-desktop mv 01_42 mode4/
sudo -u vini-desktop mv 01_89 mode4/
sudo -u vini-desktop mv 02_84 mode4/
sudo -u vini-desktop mv 03_79 mode4/
sudo -u vini-desktop mv 05_69 mode4/
sudo -u vini-desktop mv 11_38 mode4/
sudo -u vini-desktop mv 56_89 mode4/
wait

#Single round of execution:
echo "Running experiment: Nantennas=4 | mode = 5"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 5 4 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode5
sudo -u vini-desktop mv 00_41 mode5/
sudo -u vini-desktop mv 00_62 mode5/
sudo -u vini-desktop mv 00_94 mode5/
sudo -u vini-desktop mv 01_42 mode5/
sudo -u vini-desktop mv 01_89 mode5/
sudo -u vini-desktop mv 02_84 mode5/
sudo -u vini-desktop mv 03_79 mode5/
sudo -u vini-desktop mv 05_69 mode5/
sudo -u vini-desktop mv 11_38 mode5/
sudo -u vini-desktop mv 56_89 mode5/
wait

sudo -u vini-desktop mkdir 4antennas
sudo -u vini-desktop mv mode1 4antennas/
sudo -u vini-desktop mv mode4 4antennas/
sudo -u vini-desktop mv mode5 4antennas/
sudo -u vini-desktop cp process-data.py ./4antennas/process-data.py

#N Antennas = 6
#Single round of execution:
echo "Running experiment: Nantennas=6 | mode = 1"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 6 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode1
sudo -u vini-desktop mv 00_41 mode1/
sudo -u vini-desktop mv 00_62 mode1/
sudo -u vini-desktop mv 00_94 mode1/
sudo -u vini-desktop mv 01_42 mode1/
sudo -u vini-desktop mv 01_89 mode1/
sudo -u vini-desktop mv 02_84 mode1/
sudo -u vini-desktop mv 03_79 mode1/
sudo -u vini-desktop mv 05_69 mode1/
sudo -u vini-desktop mv 11_38 mode1/
sudo -u vini-desktop mv 56_89 mode1/
wait

#Single round of execution:
echo "Running experiment: Nantennas=6 | mode = 4"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 4 6 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode4
sudo -u vini-desktop mv 00_41 mode4/
sudo -u vini-desktop mv 00_62 mode4/
sudo -u vini-desktop mv 00_94 mode4/
sudo -u vini-desktop mv 01_42 mode4/
sudo -u vini-desktop mv 01_89 mode4/
sudo -u vini-desktop mv 02_84 mode4/
sudo -u vini-desktop mv 03_79 mode4/
sudo -u vini-desktop mv 05_69 mode4/
sudo -u vini-desktop mv 11_38 mode4/
sudo -u vini-desktop mv 56_89 mode4/
wait

#Single round of execution:
echo "Running experiment: Nantennas=6 | mode = 5"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 5 6 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode5
sudo -u vini-desktop mv 00_41 mode5/
sudo -u vini-desktop mv 00_62 mode5/
sudo -u vini-desktop mv 00_94 mode5/
sudo -u vini-desktop mv 01_42 mode5/
sudo -u vini-desktop mv 01_89 mode5/
sudo -u vini-desktop mv 02_84 mode5/
sudo -u vini-desktop mv 03_79 mode5/
sudo -u vini-desktop mv 05_69 mode5/
sudo -u vini-desktop mv 11_38 mode5/
sudo -u vini-desktop mv 56_89 mode5/
wait

sudo -u vini-desktop mkdir 6antennas
sudo -u vini-desktop mv mode1 6antennas/
sudo -u vini-desktop mv mode4 6antennas/
sudo -u vini-desktop mv mode5 6antennas/
sudo -u vini-desktop cp process-data.py ./6antennas/process-data.py

#N antennas = 8
#Single round of execution:
echo "Running experiment: Nantennas=8 | mode = 1"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 1 8 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode1
sudo -u vini-desktop mv 00_41 mode1/
sudo -u vini-desktop mv 00_62 mode1/
sudo -u vini-desktop mv 00_94 mode1/
sudo -u vini-desktop mv 01_42 mode1/
sudo -u vini-desktop mv 01_89 mode1/
sudo -u vini-desktop mv 02_84 mode1/
sudo -u vini-desktop mv 03_79 mode1/
sudo -u vini-desktop mv 05_69 mode1/
sudo -u vini-desktop mv 11_38 mode1/
sudo -u vini-desktop mv 56_89 mode1/
wait

#Single round of execution:
echo "Running experiment: Nantennas=8 | mode = 4"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 4 8 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode4
sudo -u vini-desktop mv 00_41 mode4/
sudo -u vini-desktop mv 00_62 mode4/
sudo -u vini-desktop mv 00_94 mode4/
sudo -u vini-desktop mv 01_42 mode4/
sudo -u vini-desktop mv 01_89 mode4/
sudo -u vini-desktop mv 02_84 mode4/
sudo -u vini-desktop mv 03_79 mode4/
sudo -u vini-desktop mv 05_69 mode4/
sudo -u vini-desktop mv 11_38 mode4/
sudo -u vini-desktop mv 56_89 mode4/
wait

#Single round of execution:
echo "Running experiment: Nantennas=8 | mode = 5"
exec /home/vini-desktop/src/libs/libnetfilter_queue/examples/nf-queue 0 8 5 8 40000 &
sudo -u vini-desktop ./run_experiment_Mix.sh
pkill nf-queue
sudo -u vini-desktop mkdir mode5
sudo -u vini-desktop mv 00_41 mode5/
sudo -u vini-desktop mv 00_62 mode5/
sudo -u vini-desktop mv 00_94 mode5/
sudo -u vini-desktop mv 01_42 mode5/
sudo -u vini-desktop mv 01_89 mode5/
sudo -u vini-desktop mv 02_84 mode5/
sudo -u vini-desktop mv 03_79 mode5/
sudo -u vini-desktop mv 05_69 mode5/
sudo -u vini-desktop mv 11_38 mode5/
sudo -u vini-desktop mv 56_89 mode5/
wait

sudo -u vini-desktop mkdir 8antennas
sudo -u vini-desktop mv mode1 8antennas/
sudo -u vini-desktop mv mode4 8antennas/
sudo -u vini-desktop mv mode5 8antennas/
sudo -u vini-desktop cp process-data.py ./8antennas/process-data.py

echo "bye."