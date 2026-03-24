source ../utils/utils.sh

print_color_table(){

echo

if [ -z "$column1_background" ]
then
echo "Column 1 background = default ($(color_name $DEF_BG_NAME))"
else
echo "Column 1 background = $BG_COLOR_NAME ($(color_name $BG_COLOR_NAME))"
fi

if [ -z "$column1_font_color" ]
then
echo "Column 1 font color = default ($(color_name $DEF_COLOR_NAME))"
else
echo "Column 1 font color = $COLOR_NAME ($(color_name $COLOR_NAME))"
fi

if [ -z "$column2_background" ]
then
echo "Column 2 background = default ($(color_name $DEF_BG_VAL))"
else
echo "Column 2 background = $BG_COLOR_VAL ($(color_name $BG_COLOR_VAL))"
fi

if [ -z "$column2_font_color" ]
then
echo "Column 2 font color = default ($(color_name $DEF_COLOR_VAL))"
else
echo "Column 2 font color = $COLOR_VAL ($(color_name $COLOR_VAL))"
fi

}
