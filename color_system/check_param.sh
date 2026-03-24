if [ "$#" != 4 ]
then
echo "The program starts with four parameters"
exit 1
fi

for param in "$@"
    do
        if ! [[ $param =~ ^[1-6]$ ]] 
        then
            echo "Parameters are colors with values from 1 to 6"
            exit 1
        fi
done

if [[ $1 -eq $2 || $3 -eq $4 ]]
    then
        echo "The colors of the background and font names match"
        echo "Call the script again"
        exit 1
fi