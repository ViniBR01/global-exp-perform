import numpy as np
import matplotlib.pyplot as plt

#plotting the load values: x is a percentage
max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69]) #, 11.38, 56.89])
filesize = 300000*8
PHYrate = 86700000
tx_time = filesize/PHYrate
x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
x = 100*x

# First, UDP counting
#Enter data from process-data, manually:
udp_4_dl_in = [4341., 4744., 4399., 4247., 3931., 2947., 2411., 1652.]
udp_4_ul_in = [4408., 4551., 4489., 4197., 3818., 3083., 2366., 1634.]
udp_6_dl_in = [6188., 6017., 5707., 5061., 4318., 3142., 2445., 1627.]
udp_6_ul_in = [6127., 6070., 5663., 5020., 4216., 3061., 2429., 1579.]
udp_8_dl_in = [6635., 6500., 6153., 5199., 4348., 3135., 2397., 1700.]
udp_8_ul_in = [6540., 6504., 6170., 5286., 4338., 3108., 2408., 1581.]

udp_4_dl = np.array(udp_4_dl_in) * 8 * 300000 / 100
udp_4_ul = np.array(udp_4_ul_in) * 8 * 300000 / 100
udp_6_dl = np.array(udp_6_dl_in) * 8 * 300000 / 100
udp_6_ul = np.array(udp_6_ul_in) * 8 * 300000 / 100
udp_8_dl = np.array(udp_8_dl_in) * 8 * 300000 / 100
udp_8_ul = np.array(udp_8_ul_in) * 8 * 300000 / 100

# Normalize results by phyrate and convert to percentage
udp_4_dl /= (4*PHYrate) / 100
udp_4_ul /= (4*PHYrate) / 100
udp_6_dl /= (4*PHYrate) / 100
udp_6_ul /= (4*PHYrate) / 100
udp_8_dl /= (4*PHYrate) / 100
udp_8_ul /= (4*PHYrate) / 100

# Remove data point that is out-of-curve
mask = np.ones(len(udp_8_dl), dtype=bool)
# mask[[1]] = False

fig, ax = plt.subplots()
# Plot Downloads as a solid line
# Plot Uploads as a dashed line
ax.plot(x[mask], udp_8_dl[mask], color='tab:red')
ax.plot(x[mask], udp_8_ul[mask], linestyle='dashed', color='tab:red')
ax.plot(x[mask], udp_6_dl[mask], color='tab:cyan')
ax.plot(x[mask], udp_6_ul[mask], linestyle='dashed', color='tab:cyan')
ax.plot(x[mask], udp_4_dl[mask], color='tab:purple')
ax.plot(x[mask], udp_4_ul[mask], linestyle='dashed', color='tab:purple')


ax.legend(['8 antennas - DL', '8 antennas - UL', '6 antennas - DL', '6 antennas - UL', '4 antennas - DL', '4 antennas - UL'], loc='upper right') #loc='lower left') #loc='upper right')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 100), ylim=(0, 100.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Aggregate TCP throughput of 300kB file transmissions - 32 stations")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate of 4 antennas]') 
plt.ylabel('Measured aggregate TCP Throughput\n[Normalized by MIMO PHY rate of 4 antennas]') 
plt.savefig('TCP-Aggreg-Throughput-32sta.png', dpi=300)



#Second, TCP throughput per file
#plotting the load values: x is a percentage
max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69, 11.38]) #, 11.38, 56.89])
filesize = 300000*8
PHYrate = 86700000
tx_time = filesize/PHYrate
x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
x = 100*x

tcp_4_throug_dl_in = [0.05878283, 0.07769557, 0.11742786, 0.20741265, 0.29019296, 0.41735946, 0.4773248,  0.53897623, 0.59557053]
tcp_4_throug_dl_err_in = [0.01672858, 0.0159685, 0.00792089, 0.00800524, 0.0164959, 0.01998829, 0.02857523, 0.02717118, 0.02478931]

tcp_4_throug_ul_in = [0.19427165, 0.20340785, 0.22099521, 0.28630687, 0.36480305, 0.46177744, 0.52072271, 0.57942844, 0.63718889]
tcp_4_throug_ul_err_in = [0.10473026, 0.10469857, 0.10843261, 0.10213358, 0.09633298, 0.09058331, 0.08779837, 0.07155779, 0.05825209]

tcp_6_throug_dl_in = [0.06700192, 0.08425313, 0.12502254, 0.20812958, 0.29074745, 0.41023956, 0.47828485, 0.54201377, 0.5865386, ]
tcp_6_throug_dl_err_in = [0.009545, 0.0058181, 0.00545929, 0.01047018, 0.01569439, 0.02251671, 0.02908099, 0.02278585, 0.0259806, ]

tcp_6_throug_ul_in = [0.17151396, 0.18250346, 0.2139009, 0.28232277, 0.35316923, 0.4710355, 0.52285203, 0.57955306, 0.6101637, ]
tcp_6_throug_ul_err_in = [0.0916839, 0.09168418, 0.09475377, 0.10615591, 0.0996677, 0.07830529, 0.08501472, 0.07344602, 0.08931968]

tcp_8_throug_dl_in = [0.07023677, 0.08927684, 0.13237503, 0.2121235, 0.2949029, 0.41803835, 0.47697828, 0.53699319, 0.58601588]
tcp_8_throug_dl_err_in = [0.00376444, 0.00320762, 0.00424714, 0.01112557, 0.01448652, 0.02489578, 0.02727393, 0.03009072, 0.02368002]

tcp_8_throug_ul_in = [0.15873484, 0.16698338, 0.20863154, 0.27765595, 0.35280343, 0.46010844, 0.52334721, 0.55470483, 0.64172049]
tcp_8_throug_ul_err_in = [0.08549641, 0.08073378, 0.0923802, 0.09809279, 0.09698718, 0.09420029, 0.06952519, 0.08261277, 0.05116103]

# print(type(tcp_4_throug_dl_in))
# quit()

# Remove data point that is out-of-curve
mask = np.ones(len(udp_8_dl), dtype=bool)
# mask[[1]] = False

fig, ax = plt.subplots()
# Plot Downloads as a solid line
# Plot Uploads as a dashed line
ax.plot(x, 100*np.array(tcp_8_throug_dl_in), color='tab:red')
ax.plot(x, 100*np.array(tcp_8_throug_ul_in), linestyle='dashed', color='tab:red')
ax.plot(x, 100*np.array(tcp_6_throug_dl_in), color='tab:cyan')
ax.plot(x, 100*np.array(tcp_6_throug_ul_in), linestyle='dashed', color='tab:cyan')
ax.plot(x, 100*np.array(tcp_4_throug_dl_in), color='tab:purple')
ax.plot(x, 100*np.array(tcp_4_throug_ul_in), linestyle='dashed', color='tab:purple')


ax.legend(['8 antennas - DL', '8 antennas - UL', '6 antennas - DL', '6 antennas - UL', '4 antennas - DL', '4 antennas - UL'], loc='upper right') #loc='lower left') #loc='upper right')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 100), ylim=(0, 70.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Per-file TCP average throughput for 300kB file transmissions - 32 stations")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate of 4 antennas]') 
plt.ylabel('Measured per-file TCP Throughput\n[Normalized by the TCP speed test with 4 antennas]') 
plt.savefig('TCP-Throughput-32sta.png', dpi=300)