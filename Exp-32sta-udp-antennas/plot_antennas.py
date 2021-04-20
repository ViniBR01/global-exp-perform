import numpy as np
import matplotlib.pyplot as plt

#Enter data from process-data, manually:
ant4_dl_in = [ 180.,  389.,  231.,  429., 1387., 1107.,  828.,  579.]
ant4_ul_in = [ 156.,  352.,  234.,  426., 1331., 1044.,  779.,  546.]
ant6_dl_in = [ 400.,  439., 1263., 1578., 1455., 1049.,  814.,  543.]
ant6_ul_in = [ 426.,  398., 1206., 1597., 1415., 1075.,  764.,  610.]
ant8_dl_in = [1036.,  824., 1734., 1669., 1421., 1011.,  772.,  560.]
ant8_ul_in = [ 927.,  871., 1668., 1714., 1457., 1096.,  828.,  538.]

ant4_dl = np.array(ant4_dl_in)
ant4_ul = np.array(ant4_ul_in)
ant6_dl = np.array(ant6_dl_in)
ant6_ul = np.array(ant6_ul_in)
ant8_dl = np.array(ant8_dl_in)
ant8_ul = np.array(ant8_ul_in)

# print(ant4_dl * 300000 / 300 / 1024 / 1024)