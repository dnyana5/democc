#!/bin/bash -x
#just branching
#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=2
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0
totalWorkingDays=0
totalWage=0
workDonePerDay=0

while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        #isFullTime=$((RANDOM%2));
        #if [ $isFullTime -eq 0 ]       #random value using variable
        if [ $((RANDOM%2)) -eq 0 ]      #random value generation - optimized
        then
                workDonePerDay=$PART_TIME
        else
                workDonePerDay=$FULL_TIME
        fi

        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));
done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours
 #end
