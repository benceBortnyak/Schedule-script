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
        ./upComing.awk bus.txt
            
        elif [ $input == 2 ]
        then
        ./upComing.awk bus.txt 
     
        elif [ $input == 3 ]
        then
        clear
            
        else
            echo 'No such an option'
        fi

    done