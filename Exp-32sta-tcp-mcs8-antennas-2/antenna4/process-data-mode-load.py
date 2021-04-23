import json
import numpy as np
from os import listdir
from os.path import isfile, join
from scipy import stats
import matplotlib.pyplot as plt

#Cleanup all data
def clean_data(data_in):
    data_out = np.array(data_in)
    z = np.abs(stats.zscore(data_out))
    z_th = 2
    while(np.max(z) > z_th):
        data_out = data_out[z<z_th]
        #print(data_out)
        z = np.abs(stats.zscore(data_out))
    return data_out

path_m1 = "./mode1/"
path_m4 = "./mode4/"
path_m5 = "./mode5/"
path_modes = [path_m1, path_m4, path_m5]
path_times = ["load10/", "load30/", "load50/", "load70/", "load90/"]

dataset_dl = []
dataset_ul = []
count_dl = []
count_ul = []
bytes_dl = []
bytes_ul = []

for i in range(len(path_modes)):
    mode_i_data_dl = []
    mode_i_data_ul = []
    mode_i_count_dl = []
    mode_i_count_ul = []
    mode_i_bytes_dl = []
    mode_i_bytes_ul = []

    for j in range(len(path_times)):
        curr_path = path_modes[i]+path_times[j]
        files = [f for f in listdir(curr_path) if isfile(join(curr_path, f))]

        mode_i_time_j_data_dl = []
        mode_i_time_j_data_ul = []
        mode_i_time_j_count_dl = []
        mode_i_time_j_count_ul = []
        mode_i_time_j_bytes_dl = []
        mode_i_time_j_bytes_ul = []


        for k in range(len(files)):
            mode_i_time_j_sta_k_data_dl = []
            mode_i_time_j_sta_k_data_ul = []
            mode_i_time_j_sta_k_count_dl = 0
            mode_i_time_j_sta_k_count_ul = 0
            mode_i_time_j_sta_k_bytes_dl = 0
            mode_i_time_j_sta_k_bytes_ul = 0

            with open(curr_path+files[k], 'r') as f:
                data = json.load(f)

            for l in (range(len(data) - 1)):
                if data[l]["mode"] == "DL":
                    mode_i_time_j_sta_k_data_dl.append(float(data[l]["mbps-receiver"]))
                    mode_i_time_j_sta_k_count_dl += 1
                    mode_i_time_j_sta_k_bytes_dl += float(data[l]["bytes-sender"])
                else:
                    mode_i_time_j_sta_k_data_ul.append(float(data[l]["mbps-receiver"]))
                    mode_i_time_j_sta_k_count_ul += 1
                    mode_i_time_j_sta_k_bytes_ul += float(data[l]["bytes-sender"])

            mode_i_time_j_data_dl.append(mode_i_time_j_sta_k_data_dl)
            mode_i_time_j_data_ul.append(mode_i_time_j_sta_k_data_ul)
            mode_i_time_j_count_dl.append(mode_i_time_j_sta_k_count_dl)
            mode_i_time_j_count_ul.append(mode_i_time_j_sta_k_count_ul)
            mode_i_time_j_bytes_dl.append(mode_i_time_j_sta_k_bytes_dl)
            mode_i_time_j_bytes_ul.append(mode_i_time_j_sta_k_bytes_ul)


        mode_i_data_dl.append(list(mode_i_time_j_data_dl))
        mode_i_data_ul.append(list(mode_i_time_j_data_ul))
        mode_i_count_dl.append(list(mode_i_time_j_count_dl))
        mode_i_count_ul.append(list(mode_i_time_j_count_ul))
        mode_i_bytes_dl.append(list(mode_i_time_j_bytes_dl))
        mode_i_bytes_ul.append(list(mode_i_time_j_bytes_ul))

    dataset_dl.append(mode_i_data_dl)
    dataset_ul.append(mode_i_data_ul)
    count_dl.append(mode_i_count_dl)
    count_ul.append(mode_i_count_ul)
    bytes_dl.append(mode_i_bytes_dl)
    bytes_ul.append(mode_i_bytes_ul)


#Sum count across all stations
total_dl_files = np.zeros((len(path_modes), len(path_times)))
total_ul_files = np.zeros((len(path_modes), len(path_times)))
total_dl_bytes = np.zeros((len(path_modes), len(path_times)))
total_ul_bytes = np.zeros((len(path_modes), len(path_times)))

for i in range(len(path_modes)):
    for j in range(len(path_times)):
        total_dl_files[i,j] = sum(count_dl[i][j])
        total_ul_files[i,j] = sum(count_ul[i][j])
        total_dl_bytes[i,j] = sum(bytes_dl[i][j])
        total_ul_bytes[i,j] = sum(bytes_ul[i][j])

total_bytes = total_dl_bytes + total_ul_bytes
total_bits = 8*total_bytes
avg_bits_sec = total_bits / 300
normalized_load = avg_bits_sec / (4*86700000)

print("Count of downloads:")
print(type(total_dl_files))
print(total_dl_files.shape)
print(total_dl_files)
print("Count of uploads:")
print(type(total_ul_files))
print(total_ul_files.shape)
print(total_ul_files)

print("Bytes of downloads:")
print(type(total_dl_bytes))
print(total_dl_bytes.shape)
print(8*total_dl_bytes / 300 / (4*86700000))
print("Bytes of uploads:")
print(type(total_ul_bytes))
print(total_ul_bytes.shape)
print(8*total_ul_bytes / 300 / (4*86700000))
print("Bytes of both:")
# print(8*total_dl_bytes / 300 / (4*86700000) + 8*total_ul_bytes / 300 / (4*86700000))
print(100*normalized_load)



# dataset_dl[mode][time][sta][0] is a unique value
# dataset_dl[mode][time][sta] is a list of lists of all related measurements from a station

# convert input dataset from list to numpy array
dataset_dl_np = np.array(dataset_dl, dtype=object)
dataset_ul_np = np.array(dataset_ul, dtype=object)
# print(dataset_dl_np[0,0,0][0])

#Calculate results
results_dl = []
average_dl = []
error_bar_dl = []
results_ul = []
average_ul = []
error_bar_ul = []

for i in range(len(path_modes)):
    results_dl_mode_i = []
    average_dl_mode_i = []
    error_bar_dl_mode_i = []
    results_ul_mode_i = []
    average_ul_mode_i = []
    error_bar_ul_mode_i = []
    
    for j in range(len(path_times)):
        results_dl_mode_i_time_j = []
        results_ul_mode_i_time_j = []
        
        for k in range(32):
            results_dl_mode_i_time_j.append(np.mean(dataset_dl_np[i,j,k]))
            results_ul_mode_i_time_j.append(np.mean(dataset_ul_np[i,j,k]))
        
        results_dl_mode_i.append(results_dl_mode_i_time_j)
        average_dl_mode_i.append(np.mean(results_dl_mode_i_time_j))
        error_bar_dl_mode_i.append(np.std(results_dl_mode_i_time_j))
        results_ul_mode_i.append(results_ul_mode_i_time_j)
        average_ul_mode_i.append(np.mean(results_ul_mode_i_time_j))
        error_bar_ul_mode_i.append(np.std(results_ul_mode_i_time_j))

    results_dl.append(results_dl_mode_i)
    average_dl.append(average_dl_mode_i)
    error_bar_dl.append(error_bar_dl_mode_i)
    results_ul.append(results_ul_mode_i)
    average_ul.append(average_ul_mode_i)
    error_bar_ul.append(error_bar_ul_mode_i)

# Normalize
tcp_speed = 80 #MCS4
average_dl = np.array(average_dl)/tcp_speed
error_bar_dl = np.array(error_bar_dl)/tcp_speed
average_ul = np.array(average_ul)/tcp_speed
error_bar_ul = np.array(error_bar_ul)/tcp_speed



#plotting
# max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69, 11.38, 56.89])
# filesize = 300000*8
# PHYrate = 86700000
# tx_time = filesize/PHYrate
# x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
# x = 100*x

x = np.array([10, 30, 50, 70, 90])
# print(x[0:7])
# print(average_dl[0:7])
# print(error_bar_dl[0:7])

fig, ax = plt.subplots()
i = 5
# Plot Downloads as a solid line
ax.errorbar(100*normalized_load[0][0:i], average_dl[0][0:i], yerr=error_bar_dl[0][0:i], color='tab:blue')
ax.errorbar(100*normalized_load[1][0:i], average_dl[1][0:i], yerr=error_bar_dl[1][0:i], color='tab:orange')
ax.errorbar(100*normalized_load[2][0:i], average_dl[2][0:i], yerr=error_bar_dl[2][0:i], color='tab:green')
# Plot Uploads as a dashed line
ax.errorbar(100*normalized_load[0][0:i], average_ul[0][0:i], yerr=error_bar_ul[0][0:i], linestyle='dashed', color='tab:blue')
ax.errorbar(100*normalized_load[1][0:i], average_ul[1][0:i], yerr=error_bar_ul[1][0:i], linestyle='dashed', color='tab:orange')
ax.errorbar(100*normalized_load[2][0:i], average_ul[2][0:i], yerr=error_bar_ul[2][0:i], linestyle='dashed', color='tab:green')

ax.legend(['SU download','MU-Reports download','MU-Genie download','SU upload','MU-Reports upload','MU-Genie upload'], loc='upper right') #loc='lower left')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 60), ylim=(0, 1.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Average TCP throughput of a 300kB file - 32 stations")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate]') 
plt.ylabel('Measured average TCP Throughput per file\n[Normalized by the TCP speed test result]') 
plt.savefig('TCP-Throughput-Uploads-32sta.png', dpi=300)

# Print values to the screen to manually capture them
print("Per-file throughput od mode 5 results: dl, err, ul, err")
print(average_dl[2][0:i])
print(error_bar_dl[2][0:i])
print(average_ul[2][0:i])
print(error_bar_ul[2][0:i])

fig2, ax2 = plt.subplots()
# Plot Downloads as a solid line
ax2.plot(x[0:i], 100*(average_dl[1][0:i] / average_dl[0][0:i] - 1), '*-', color='tab:orange')
ax2.plot(x[0:i], 100*(average_dl[2][0:i] / average_dl[0][0:i] - 1), '*-', color='tab:green')
# Plot Uploads as a dashed line
ax2.plot(x[0:i], 100*(average_ul[1][0:i] / average_ul[0][0:i] - 1), '*--', color='tab:orange')
ax2.plot(x[0:i], 100*(average_ul[2][0:i] / average_ul[0][0:i] - 1), '*--', color='tab:green')

ax2.legend(['MU-Reports / SU downloads','MU-Genie / SU downloads', 'MU-Reports / SU uploads','MU-Genie / SU uploads'])
ax2.set(xlim=(0, 100), ylim=(0, 250))
ax2.grid(color='k', linestyle='--', linewidth=1)
plt.title("Relative Gain of the 2 MU modes over the SU Uplink")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate]') 
plt.ylabel('Gain in Throughput for TCP transmissions, in %') 
plt.savefig('MU-gains.png', dpi=300)
