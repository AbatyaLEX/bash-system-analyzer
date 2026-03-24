#1 — white, 2 — red, 3 — green, 4 — blue, 5 – purple, 6 — black

source ../utils/utils.sh

BG_COLOR_NAME=$1
COLOR_NAME=$2
BG_COLOR_VAL=$3
COLOR_VAL=$4

BG_COLOR_NAME_ANSI=$(($(color_id $BG_COLOR_NAME) + 10))
COLOR_NAME_ANSI=$(color_id $COLOR_NAME)
BG_COLOR_VAL_ANSI=$(($(color_id $BG_COLOR_VAL) + 10))
COLOR_VAL_ANSI=$(color_id $COLOR_VAL)