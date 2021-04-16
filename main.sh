#! /bin/bash

# Main script to run global experiments
# For usage, see usage-example.sh. Do not modify this file for new experiments.

process_input () {
    # Check if input is an array string by searching for ';' within it
    if [[ "$OPTARG" == *";"* ]]; then
        IFS=";" read -r -a arr <<< "${OPTARG}"
        echo "${arr[@]}"
    else
        echo "$OPTARG"
    fi
}

while getopts ":f:t:r:m:u:a:g:p:n:" opt; do
    case ${opt} in
        f )
            file_size=($(process_input "$OPTARG"))
            ;;
        t )
            traffic_load=($(process_input "$OPTARG"))
            ;;
        r )
            upload_ratio=($(process_input "$OPTARG"))
            ;;
        m )
            MCS=($(process_input "$OPTARG"))
            ;;
        u )
            uplink_mode=($(process_input "$OPTARG"))
            ;;
        a )
            AP_antennas=($(process_input "$OPTARG"))
            ;;
        g )
            max_aggregation=($(process_input "$OPTARG"))
            ;;
        p )
            AP_priority=($(process_input "$OPTARG"))
            ;;
        n )
            dir_name=($(process_input "$OPTARG"))
            ;;
        \? )
            echo "Invalid option. Usage: check script file."
            ;;
        : )
            echo "Requires an argument."
            ;;
    esac
done

echo " "
echo "Received the following input arguments:"
echo "File size = ${file_size[@]}"
echo "Traffic load = ${traffic_load[@]}"
echo "Upload ratio = ${upload_ratio[@]}"
echo "MCS = ${MCS[@]}"
echo "Uplink mode = ${uplink_mode[@]}"
echo "AP antennas = ${AP_antennas[@]}"
echo "Max aggregation = ${max_aggregation[@]}"
echo "AP priority = ${AP_priority[@]}"
echo "Directory name = ${dir_name[@]}"
echo " "

# Iteratively run all combination of parameters
# The directory structure output should be minimal

base_path="./${dir_name[0]}/"

for size in "${file_size[@]}"
do
    for load in "${traffic_load[@]}"
    do
        for ratio in "${upload_ratio[@]}"
        do
            for mcs in "${MCS[@]}"
            do
                for mode in "${uplink_mode[@]}"
                do
                    for antenna in "${AP_antennas[@]}"
                    do
                        for aggreg in "${max_aggregation[@]}"
                        do
                            for priority in "${AP_priority[@]}"
                            do
                                echo "Experiment with: $size, $load, $ratio, $mcs, $mode, $antenna, $aggreg, $priority"
                                echo "$base_path"
                            done
                        done
                    done
                done
            done
        done
    done
done

exit 0