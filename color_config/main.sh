#!/bin/bash

source ../lib/check_zero_param.sh
source ../lib/get_sys_info.sh
source ./set_color.sh
source ../lib/print_color_sys_info.sh
source ./color_table.sh

get_system_info
set_colors
print_color_system_info
print_color_table