import numpy as np
import matplotlib.pyplot as plt

# First, byte counting
#Enter data from process-data, manually:
load_su_4ant_in = [0.05907718, 0.11118947, 0.26218075, 0.51316917, 0.92693037, 1.13003214, 1.16908223]
mbps_su_4ant_in = [51.37824471, 50.80967765, 47.16800721, 39.51393212, 20.656934, 5.96431814, 4.52778768]
error_su_4ant_in = [2.18632119, 1.92550483, 2.36623327, 2.52197959, 2.14594077, 0.90215206, 0.75661854]
load_mu_4ant_in = [0.05307687, 0.10408627, 0.2469469,  0.50301597, 0.96231255, 1.58970772, 1.65139842]
mbps_mu_4ant_in = [52.9329237,  51.89243525, 49.37080438, 44.0509184,  30.76384737, 13.94209692, 11.30559251]
error_mu_4ant_in = [2.72997509, 3.0717854, 2.91873269, 3.32905072, 4.14786772, 4.05707208, 4.19811864]

load_su_6ant_in = [0.07647189, 0.15012729, 0.38351713, 0.73589928, 1.06604766, 1.16464194, 1.18522946]
mbps_su_6ant_in = [49.88689124, 48.78066678, 43.57931642, 31.03934403, 10.12053848, 5.16671328, 4.28963893]
error_su_6ant_in = [2.82119187, 2.43836524, 2.81103732, 3.3899207, 1.71654171, 0.99939139, 0.91358672]
load_mu_6ant_in = [0.07674941, 0.1524579,  0.38454009, 0.74254623, 1.33000039, 1.85026288, 1.88353629]
mbps_mu_6ant_in = [52.6782002,  51.27101215, 46.48810877, 37.54585204, 20.69117119, 11.63960646, 10.12357947]
error_mu_6ant_in = [2.63839737, 2.91026352, 3.59897392, 4.0399162, 4.12695384, 3.85957474, 3.94102184]

load_su_8ant_in = [0.1031163, 0.20033558, 0.50976172, 0.92132792, 1.11614996, 1.17638302, 1.18657394]
mbps_su_8ant_in = [49.80835024, 47.80537689, 39.55456326, 20.98570406, 7.32848355, 4.78420504, 4.31217221]
error_su_8ant_in = [2.78515501, 2.73812111, 3.08903775, 2.53661111, 1.41297253, 1.00719963, 0.92722472]
load_mu_8ant_in = [0.10356985, 0.20658736, 0.51138013, 0.97431857, 1.59045316, 1.99240233, 2.02545839]
mbps_mu_8ant_in = [52.32035516, 50.7114789, 44.06127465, 30.94677998, 15.65131654, 10.28091773, 9.08512964]
error_mu_8ant_in = [2.71277464, 3.01320629, 3.54884139, 4.13385496, 3.75003612, 3.4912189, 3.56628035]


fig, ax = plt.subplots()
# Plot Downloads as a solid line
# Plot Uploads as a dashed line
ax.errorbar(load_mu_8ant_in, mbps_mu_8ant_in, error_mu_8ant_in, color='tab:red')
ax.errorbar(load_su_8ant_in, mbps_su_8ant_in, error_su_8ant_in, linestyle='dashed', color='tab:red')
ax.errorbar(load_mu_6ant_in, mbps_mu_6ant_in, error_mu_6ant_in, color='tab:cyan')
ax.errorbar(load_su_6ant_in, mbps_su_6ant_in, error_su_6ant_in, linestyle='dashed', color='tab:cyan')
ax.errorbar(load_mu_4ant_in, mbps_mu_4ant_in, error_mu_4ant_in, color='tab:purple')
ax.errorbar(load_su_4ant_in, mbps_su_4ant_in, error_su_4ant_in, linestyle='dashed', color='tab:purple')


ax.legend(['8 antennas - MU uplink', '8 antennas - SU uplink', '6 antennas - MU uplink', '6 antennas - SU uplink', '4 antennas - MU uplink', '4 antennas - SU uplink'], loc='upper right') #loc='lower left') #loc='upper right')
# ax.legend(bbox_to_anchor=(1.1, 1.05))
ax.set(xlim=(0, 2.25), ylim=(0, 60.0))
ax.grid(color='k', linestyle='--', linewidth=1)
plt.title("Per-file TCP average throughput for 300kB file transmissions - 32 stations")
plt.xlabel('Aggregate traffic load in network [Normalized by single-stream PHY rate]') 
plt.ylabel('Measured average TCP Throughput per file, in Mbps') 
plt.savefig('TCP-Throughput-32sta.png', dpi=300)