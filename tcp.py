import subprocess
import json
import time
import random
import sys, getopt

def run_iperf_DL(server_ip, filesize):
    return subprocess.check_output(["iperf3", "-c", server_ip, "-J", "-M 1460", "-l 1460", "-n "+str(filesize)])

def run_iperf_UL(server_ip, filesize):
    return subprocess.check_output(["iperf3", "-c", server_ip, "-J", "-M 1460", "-l 1460", "-n "+str(filesize), "-R"])

def get_interval(min_interval, max_interval):
    return random.random()*(max_interval - min_interval) + min_interval

def extract_bps(json_out):
    dict_out = json.loads(json_out)
    return dict_out["end"]["streams"][0]["receiver"]["bits_per_second"]

def print_JSON(direction, size, max_interval, upload_ratio, json_out):
    string_out = '{ '
    string_out += '"mode" : "' + direction + '", '
    string_out += '"filesize" : ' + str(size) + ', '
    string_out += '"mbps" : ' + str(extract_bps(json_out)/1024/1024) + ' '
    string_out += '},'
    print(string_out)
    pass

def main(argv):
    size = 500000 #bytes
    min_interval = 0.0 #seconds
    max_interval = 1.5 #seconds
    t_end = time.time() + 10
    server_ip = "192.168.0.102"
    upload_ratio = 0

    usage_str = 'main.py -i <server-ip> -f <file-size> -l <time-length> -t <traffic-lead> -m <ratio-of-uploads>'
    
    try:
        opts, args = getopt.getopt(argv,"hf:l:i:t:m:",["file-size=","length=","server-ip=","traffic-load=","upload-ratio="])
    except getopt.GetoptError:
        print(usage_str)
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print(usage_str)
            sys.exit()
        elif opt in ("-f", "--file-size"):
            size = int(arg)
        elif opt in ("-l", "--length"):
            t_end = time.time() + int(arg)
        elif opt in ("-t", "--traffic-load"):
            traffic_load = float(arg)
        elif opt in ("-i", "--server-ip"):
            server_ip = arg
        elif opt in ("-m", "--upload-ratio"):
            upload_ratio = float(arg)
    
    # Convert traffic_load into max and min interval
    N_stations = 32 # Hard-coded: fix-me XXX
    N_AP = 4 # XXX
    PHY_rate = 43300000 # XXX mcs0:7200000 | mcs4:43300000 | mcs8:86700000
    avg_interval = (100 * N_stations * 8 * size) / (traffic_load * N_AP * PHY_rate) - (8 * size / PHY_rate)
    max_interval = 2 * avg_interval
    min_interval = 0
    # print("avg_interval = " + str(avg_interval))

    print('[')

    while (time.time() < t_end):
        interval = get_interval(min_interval, max_interval)
        time.sleep(interval)
        direction = random.choices(['UL', 'DL'], weights=[upload_ratio, 1-upload_ratio])[0]

        try:
            if direction == 'DL':
                json_out = run_iperf_DL(server_ip, size)
            else:
                json_out = run_iperf_UL(server_ip, size)
        except:
            continue
        else:
            # Call function that will format output and print to stdout
            print_JSON(direction, size, max_interval, upload_ratio, json_out)

    print('{}]')

if __name__ == "__main__":
    main(sys.argv[1:])