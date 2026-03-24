#!/bin/bash

source ./check_param.sh
source ./dir_info.sh

start_time=$(date +%s.%N)

validate_param "$@"

DIR="$1"

print_info "$DIR"

end_time=$(date +%s.%N)

run_time=$(echo "$end_time - $start_time" | bc)

printf "Script execution time (in seconds) = %.1f\n" "$run_time"