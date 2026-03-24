color_id(){
    case $1 in
        1) echo 37 ;;
        2) echo 31 ;;
        3) echo 32 ;;
        4) echo 34 ;;
        5) echo 35 ;;
        6) echo 30 ;;
    esac
}

color_name(){
    case $1 in
        1) echo "white" ;;
        2) echo "red" ;;
        3) echo "green" ;;
        4) echo "blue" ;;
        5) echo "purple" ;;
        6) echo "black" ;;
    esac
}