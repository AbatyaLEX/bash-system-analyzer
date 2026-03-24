save_info(){
    local file_name
    file_name=$(date +"%d_%m_%y_%H_%M_%S.status")
    read -p "Save data to file? Y/N? " answer
    if [[ $answer == "Y" || $answer == "y" ]]
    then
    print_basic_system_info > "$file_name"
    echo "Successfully saved"
    else
    echo "Save failed"
    fi
}