#!/bin/bash
source ./color.conf
source ../utils/utils.sh

#DEF COL
DEF_BG_NAME=5
DEF_COLOR_NAME=2
DEF_BG_VAL=6
DEF_COLOR_VAL=1

set_colors(){

BG_COLOR_NAME=${column1_background}
[ -z "$BG_COLOR_NAME" ] && BG_COLOR_NAME=$DEF_BG_NAME

COLOR_NAME=${column1_font_color}
[ -z "$COLOR_NAME" ] && COLOR_NAME=$DEF_COLOR_NAME

BG_COLOR_VAL=${column2_background}
[ -z "$BG_COLOR_VAL" ] && BG_COLOR_VAL=$DEF_BG_VAL

COLOR_VAL=${column2_font_color}
[ -z "$COLOR_VAL" ] && COLOR_VAL=$DEF_COLOR_VAL


if [[ $BG_COLOR_NAME -eq $COLOR_NAME ]]
then
    echo "The colors of the background and font names match"
    echo "Call the script again"
    exit 1
fi

if [[ $BG_COLOR_VAL -eq $COLOR_VAL ]]
then
    echo "The colors of the background and font names match"
    echo "Call the script again"
    exit 1
fi

BG_COLOR_NAME_ANSI=$(($(color_id $BG_COLOR_NAME) + 10))
COLOR_NAME_ANSI=$(color_id $COLOR_NAME)
BG_COLOR_VAL_ANSI=$(($(color_id $BG_COLOR_VAL) + 10))
COLOR_VAL_ANSI=$(color_id $COLOR_VAL)

}