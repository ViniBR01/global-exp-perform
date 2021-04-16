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
            file_size=$(process_input "$OPTARG")
            ;;
        t )
            traffic_load=$(process_input "$OPTARG")
            ;;
        r )
            upload_ratio=$(process_input "$OPTARG")
            ;;
        m )
            MCS=$(process_input "$OPTARG")
            ;;
        u )
            uplink_mode=$(process_input "$OPTARG")
            ;;
        a )
            AP_antennas=$(process_input "$OPTARG")
            ;;
        g )
            max_aggregation=$(process_input "$OPTARG")
            ;;
        p )
            AP_priority=$(process_input "$OPTARG")
            ;;
        n )
            dir_name=$(process_input "$OPTARG")
            ;;
        \? )
            echo "Invalid option. Usage: check script file."
            ;;
        : )
            echo "Requires an argument."
            ;;
    esac
done

echo "${file_size[@]}"
echo "${traffic_load[@]}"

exit 0