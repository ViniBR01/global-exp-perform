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

# echo " "
# echo "Received the following input arguments:"
# echo "File size = ${file_size[@]}"
# echo "Traffic load = ${traffic_load[@]}"
# echo "Upload ratio = ${upload_ratio[@]}"
# echo "MCS = ${MCS[@]}"
# echo "Uplink mode = ${uplink_mode[@]}"
# echo "AP antennas = ${AP_antennas[@]}"
# echo "Max aggregation = ${max_aggregation[@]}"
# echo "AP priority = ${AP_priority[@]}"
# echo "Directory name = ${dir_name[@]}"
# echo " "

# Iteratively run all combination of parameters
# The directory structure output should be minimal

base_path="./${dir_name[0]}/"

for size in "${file_size[@]}"; do
    path1="$base_path"
    if [[ "${file_size[1]}" != "" ]] 
    then
        path1="${path1}size${size}/"
    fi
    for load in "${traffic_load[@]}"; do
        path2="$path1"
        if [[ "${traffic_load[1]}" != "" ]]
        then
            path2="${path2}load${load}/"
        fi
        for ratio in "${upload_ratio[@]}"; do
            path3="$path2"
            if [[ "${upload_ratio[1]}" != "" ]]
            then
                path3="${path3}ratio${ratio}/"
            fi
            for mcs in "${MCS[@]}"; do
                path4="$path3"
                if [[ "${MCS[1]}" != "" ]]
                then
                    path4="${path4}mcs${mcs}/"
                fi
                for mode in "${uplink_mode[@]}"; do
                    path5="$path4"
                    if [[ "${uplink_mode[1]}" != "" ]]
                    then
                        path5="${path5}mode${mode}/"
                    fi
                    for antenna in "${AP_antennas[@]}"; do
                        path6="$path5"
                        if [[ "${AP_antennas[1]}" != "" ]]
                        then
                            path6="${path6}antenna${antenna}/"
                        fi
                        for aggreg in "${max_aggregation[@]}"; do
                            path7="$path6"
                            if [[ "${max_aggregation[1]}" != "" ]]
                            then
                                path7="${path7}aggreg${aggreg}/"
                            fi
                            for priority in "${AP_priority[@]}"; do
                                path8="$path7"
                                if [[ "${AP_priority[1]}" != "" ]]
                                then
                                    path8="${path8}priority${priority}/"
                                fi
                                echo "Experiment with: $size, $load, $ratio, $mcs, $mode, $antenna, $aggreg, $priority"
                                echo "$path8"
                            done
                        done
                    done
                done
            done
        done
    done
done

exit 0