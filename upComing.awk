#!/usr/bin/awk -f

BEGIN{
    var=ARGV[1]
    timeHour=strftime("%H", systime())
    timeMinute=strftime("%M", systime())
    print "Upcoming buses today, after : " timeHour ":" timeMinute
}
{
    print var
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