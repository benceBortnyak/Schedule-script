#!/usr/bin/awk -f

BEGIN{
    timeHour=h
    timeMinute=m
    print "Upcoming buses today, after : " timeHour ":" timeMinute
}
{
    if(($2 + 0)>=(timeHour + 0)){
        if($2+0 == timeHour + 0 && $3 + 0 > timeMinute+ 0 ){
            print "Line: ",$1 " Departure: " $2 ":" $3
        }else{
            print "Line: ",$1 " Departure: " $2 ":" $3
        }
    }
}
END{
    print"---------------------------"
}