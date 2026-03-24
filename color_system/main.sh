#!/bin/bash

source ./check_param.sh
source ../lib/get_sys_info.sh
source ./set_color.sh "$@"
get_system_info
source ../lib/print_color_sys_info.sh
print_color_system_info
