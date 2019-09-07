#!/bin/bash
clear
chmod 755 upComing.awk
while true

    do
    echo 'Enter:'
    echo '1 to see the up coming buses'
    echo '2 specify the time for the upcoming buses'
    echo '3 to see all buses by line number(1-4)'
    echo 'enter the option:' 
    read input
    echo "option $input"
    
        if [ $input == 1 ]
        then
        clear
        hour=$(date +%H)
        minute=$(date +%M)
        result=$(awk -v h=$hour -v m=$minute -f upComing.awk bus.txt)
            if [[ ! $result ]]
            then
                echo "No buses today"
            else
                echo "$result"
            fi
    
        elif [ $input == 2 ]
        then
        clear
        read -p 'Hour: ' inHour
        read -p 'Minute: ' inMinute
        
        result2=$(awk -v h=$inHour -v m=$inMinute -f upComing.awk bus.txt)

            if [[ ! $result2 ]]
            then
                echo "No buses today"
            else
                echo "$result2"
            fi

        elif [ $input == 3 ]
        then
        clear
        read -p 'Enter the line: ' lineIn
        result3=$(awk -v line=$lineIn '{if($1 == line){ print "Line: ",$1 ,$2 ":" $3} }' bus.txt)
            if [[ ! $result3 ]]
            then
                echo "No such line"
            else
                echo "$result3"
            fi
        else
            echo 'No such an option'
        fi

    done