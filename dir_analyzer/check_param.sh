

validate_param() {
    if [ "$#" != 1 ]
    then
        echo There must be one parameter - path
        exit 1
    fi

    dir_path="$1"

    if [[ "$dir_path" != */ ]]
    then
        echo "The path must be terminated with the '/'"
        exit 1
    fi

    if [ ! -d "$dir_path" ]
    then
        echo "Wrong path"
        exit 1
    fi
}