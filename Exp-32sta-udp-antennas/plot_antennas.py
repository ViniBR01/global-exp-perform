import numpy as np
import matplotlib.pyplot as plt

#Enter data from process-data, manually:
ant4_dl_in = [ 180.,  389.,  231.,  429., 1387., 1107.,  828.,  579.]
ant4_ul_in = [ 156.,  352.,  234.,  426., 1331., 1044.,  779.,  546.]
ant6_dl_in = [ 400.,  439., 1263., 1578., 1455., 1049.,  814.,  543.]
ant6_ul_in = [ 426.,  398., 1206., 1597., 1415., 1075.,  764.,  610.]
ant8_dl_in = [1036.,  824., 1734., 1669., 1421., 1011.,  772.,  560.]
ant8_ul_in = [ 927.,  871., 1668., 1714., 1457., 1096.,  828.,  538.]

ant4_dl = np.array(ant4_dl_in) * 8 * 300000 / 100
ant4_ul = np.array(ant4_ul_in) * 8 * 300000 / 100
ant6_dl = np.array(ant6_dl_in) * 8 * 300000 / 100
ant6_ul = np.array(ant6_ul_in) * 8 * 300000 / 100
ant8_dl = np.array(ant8_dl_in) * 8 * 300000 / 100
ant8_ul = np.array(ant8_ul_in) * 8 * 300000 / 100

#plotting
max_interval = np.array([0.41, 0.62, 0.94, 1.42, 1.89, 2.84, 3.79, 5.69]) #, 11.38, 56.89])
filesize = 300000*8
PHYrate = 86700000
tx_time = filesize/PHYrate
x = 32*filesize / (max_interval/2 + tx_time) / (4*PHYrate)
x = 100*x

# Normalize results by phyrate and convert to percentage
ant4_dl /= (4*PHYrate) / 100
ant4_ul /= (4*PHYrate) / 100
ant6_dl /= (4*PHYrate) / 100
ant6_ul /= (4*PHYrate) / 100
ant8_dl /= (4*PHYrate) / 100
ant8_ul /= (4*PHYrate) / 100

# Remove data point that is out-of-curve
mask = np.ones(len(ant8_dl), dtype=bool)
mask[[1]] = False

fig, ax = plt.subplots()
i = 8
# Plot Downloads as a solid line
ax.plot(x[mask], ant4_dl[mask], color='tab:purple')
ax.plot(x[mask], ant6_dl[mask], color='tab:cyan')
ax.plot(x[mask], ant8_dl[mask], color='tab:red')
# Plot Uploads as a dashed line
ax.plot(x[mask], ant4_ul[mask], linestyle='dashed', color='tab:purple')
ax.plot(x[mask], ant6_ul[mask], linestyle='dashed', color='tab:cyan')
ax.plot(x[mask], ant8_ul[mask], linestyle='dashed', color='tab:red')

ax.legend(['4 antennas - DL', '6 antennas - DL', '8 antennas - DL', '4 antennas - UL', '6 antennas - UL', '8 antennas - UL'], loc='upper right') #loc='lower left') #loc='upper right')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 100), ylim=(0, 20.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Average UDP throughput of 300kB file transmissions - 32 stations")
plt.xlabel('Aggregate traffic load in network, in % [Normalized by MIMO PHY rate of 4 antennas]') 
plt.ylabel('Measured aggregate UDP Throughput\n[Normalized by MIMO PHY rate of 4 antennas]') 
plt.savefig('UDP-Throughput-32sta.png', dpi=300)