import numpy as np
import matplotlib.pyplot as plt

#plotting the load values: x is a percentage
# max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69]) #, 11.38, 56.89])
# filesize = 300000*8
PHYrate = 43300000
# tx_time = filesize/PHYrate
# x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
# x = 100*x
x = np.array([10, 30, 50, 70, 90])

# First, UDP counting
#Enter data from process-data, manually:
udp_4_dl_in = [1087., 2879., 3817., 4077., 4094.]
udp_4_ul_in = [1084., 2891., 3821., 3961., 4007.]
udp_6_dl_in = [1069., 2891., 3971., 4431., 4680.]
udp_6_ul_in = [1104., 2942., 4104., 4530., 4607.]
udp_8_dl_in = [1069., 2921., 4005., 4761., 4891.]
udp_8_ul_in = [1101., 2892., 4173., 4701., 4984.]

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
ax.plot(x, udp_8_dl, color='tab:red')
ax.plot(x, udp_8_ul, linestyle='dashed', color='tab:red')
ax.plot(x, udp_6_dl, color='tab:cyan')
ax.plot(x, udp_6_ul, linestyle='dashed', color='tab:cyan')
ax.plot(x, udp_4_dl, color='tab:purple')
ax.plot(x, udp_4_ul, linestyle='dashed', color='tab:purple')


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
# max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69, 11.38]) #, 11.38, 56.89])
# filesize = 300000*8
# PHYrate = 86700000
# tx_time = filesize/PHYrate
# x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
# x = 100*x
x = np.array([10, 30, 50, 70, 90])

tcp_4_throug_dl_in = [0.62009633, 0.2853222,  0.13590333, 0.09492763, 0.07502079]
tcp_4_throug_dl_err_in = [0.03648994, 0.0180954,  0.00891663, 0.01398795, 0.01448219]

tcp_4_throug_ul_in = [0.73037687, 0.47033084, 0.34447488, 0.31352765, 0.29998482]
tcp_4_throug_ul_err_in = [0.05809921, 0.09406997, 0.09991809, 0.10056902, 0.09975165]

tcp_6_throug_dl_in = [0.62346313, 0.27638619, 0.14731054, 0.10380033, 0.08729612]
tcp_6_throug_dl_err_in = [0.03834619, 0.02185399, 0.00600096, 0.00586861, 0.00830155]

tcp_6_throug_ul_in = [0.73400983, 0.46095814, 0.33754006, 0.29519358, 0.28135755]
tcp_6_throug_ul_err_in = [0.06429763, 0.09183327, 0.09029896, 0.08919137, 0.08996989]

tcp_8_throug_dl_in = [0.6145676,  0.28576624, 0.15021666, 0.1116801, 0.0913842]
tcp_8_throug_dl_err_in = [0.04038766, 0.02096869, 0.00652016, 0.00437759, 0.0044234]

tcp_8_throug_ul_in = [0.73435528, 0.46349572, 0.32998751, 0.28492038, 0.26225167]
tcp_8_throug_ul_err_in = [0.05676524, 0.09233587, 0.08690787, 0.08482028, 0.08438368]

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