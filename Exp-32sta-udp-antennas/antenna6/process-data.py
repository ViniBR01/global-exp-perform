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
path_times = ["00_41/", "00_62/", "00_94/", "01_42/", "01_89/", "02_84/", "03_79/", "05_69/", "11_38/", "56_89/"]

dataset_dl = []
dataset_ul = []
count_dl = []
count_ul = []

for i in range(3):
    mode_i_data_dl = []
    mode_i_data_ul = []
    mode_i_count_dl = []
    mode_i_count_ul = []

    for j in range(10):
        curr_path = path_modes[i]+path_times[j]
        files = [f for f in listdir(curr_path) if isfile(join(curr_path, f))]

        mode_i_time_j_data_dl = []
        mode_i_time_j_data_ul = []
        mode_i_time_j_count_dl = []
        mode_i_time_j_count_ul = []

        for k in range(len(files)):
            mode_i_time_j_sta_k_data_dl = []
            mode_i_time_j_sta_k_data_ul = []
            mode_i_time_j_sta_k_count_dl = 0
            mode_i_time_j_sta_k_count_ul = 0

            with open(curr_path+files[k], 'r') as f:
                data = json.load(f)

            for l in (range(len(data) - 1)):
                if data[l]["mode"] == "DL":
                    mode_i_time_j_sta_k_data_dl.append(float(data[l]["mbps"]))
                    mode_i_time_j_sta_k_count_dl += 1
            
                else:
                    mode_i_time_j_sta_k_data_ul.append(float(data[l]["mbps"]))
                    mode_i_time_j_sta_k_count_ul += 1

            mode_i_time_j_data_dl.append(mode_i_time_j_sta_k_data_dl)
            mode_i_time_j_data_ul.append(mode_i_time_j_sta_k_data_ul)
            mode_i_time_j_count_dl.append(mode_i_time_j_sta_k_count_dl)
            mode_i_time_j_count_ul.append(mode_i_time_j_sta_k_count_ul)
            

        mode_i_data_dl.append(list(mode_i_time_j_data_dl))
        mode_i_data_ul.append(list(mode_i_time_j_data_ul))
        mode_i_count_dl.append(list(mode_i_time_j_count_dl))
        mode_i_count_ul.append(list(mode_i_time_j_count_ul))
        
    
    dataset_dl.append(mode_i_data_dl)
    dataset_ul.append(mode_i_data_ul)
    count_dl.append(mode_i_count_dl)
    count_ul.append(mode_i_count_ul)
    

#Sum count across all stations
total_dl_files = np.zeros((3,8))
total_ul_files = np.zeros((3,8))
for i in range(3):
    for j in range(8):
        total_dl_files[i,j] = sum(count_dl[i][j])
        total_ul_files[i,j] = sum(count_ul[i][j])

print(type(total_dl_files))
print(total_dl_files.shape)
print(total_dl_files)

print(type(total_ul_files))
print(total_ul_files.shape)
print(total_ul_files)



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


for i in range(3):
    results_dl_mode_i = []
    average_dl_mode_i = []
    error_bar_dl_mode_i = []
    results_ul_mode_i = []
    average_ul_mode_i = []
    error_bar_ul_mode_i = []
    
    for j in range(8):
        results_dl_mode_i_time_j = []
        results_ul_mode_i_time_j = []
        
        for k in range(32):
            # print(type(dataset_dl_np))
            # print(dataset_dl_np.size)
            # print(dataset_dl_np.shape)
            # print(type(dataset_dl_np[i,j]))
            # print(dataset_dl_np[i,j][k])
            
            results_dl_mode_i_time_j.append(np.nanmean(dataset_dl_np[i,j][k]))
            results_ul_mode_i_time_j.append(np.nanmean(dataset_ul_np[i,j][k]))
        
        results_dl_mode_i.append(results_dl_mode_i_time_j)
        average_dl_mode_i.append(np.nanmean(results_dl_mode_i_time_j))
        error_bar_dl_mode_i.append(np.nanstd(results_dl_mode_i_time_j))
        results_ul_mode_i.append(results_ul_mode_i_time_j)
        average_ul_mode_i.append(np.nanmean(results_ul_mode_i_time_j))
        error_bar_ul_mode_i.append(np.nanstd(results_ul_mode_i_time_j))

    results_dl.append(results_dl_mode_i)
    average_dl.append(average_dl_mode_i)
    error_bar_dl.append(error_bar_dl_mode_i)
    results_ul.append(results_ul_mode_i)
    average_ul.append(average_ul_mode_i)
    error_bar_ul.append(error_bar_ul_mode_i)

# Normalize
tcp_speed = 80
average_dl = np.array(average_dl)/tcp_speed
error_bar_dl = np.array(error_bar_dl)/tcp_speed
average_ul = np.array(average_ul)/tcp_speed
error_bar_ul = np.array(error_bar_ul)/tcp_speed



#plotting
max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69, 11.38, 56.89])
filesize = 300000*8
PHYrate = 86700000
tx_time = filesize/PHYrate
x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
x = 100*x
# print(x[0:7])
# print(average_dl[0:7])
# print(error_bar_dl[0:7])

fig, ax = plt.subplots()
i = 8
# Plot Downloads as a solid line
ax.errorbar(x[3:i], average_dl[0][3:i], yerr=error_bar_dl[0][3:i], color='tab:blue')
ax.errorbar(x[0:i], average_dl[1][0:i], yerr=error_bar_dl[1][0:i], color='tab:orange')
ax.errorbar(x[0:i], average_dl[2][0:i], yerr=error_bar_dl[2][0:i], color='tab:green')
# Plot Uploads as a dashed line
ax.errorbar(x[3:i], average_ul[0][3:i], yerr=error_bar_ul[0][3:i], linestyle='dashed', color='tab:blue')
ax.errorbar(x[0:i], average_ul[1][0:i], yerr=error_bar_ul[1][0:i], linestyle='dashed', color='tab:orange')
ax.errorbar(x[0:i], average_ul[2][0:i], yerr=error_bar_ul[2][0:i], linestyle='dashed', color='tab:green')

ax.legend(['SU download','MU-Reports download','MU-Genie download','SU upload','MU-Reports upload','MU-Genie upload'], loc='lower left') #loc='lower left') #loc='upper right')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 100), ylim=(0, 1.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Average TCP throughput of a 300kB file - 32 stations")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate]') 
plt.ylabel('Measured average TCP Throughput per file\n[Normalized by the TCP speed test result]') 
plt.savefig('TCP-Throughput-Uploads-32sta.png', dpi=300)



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


