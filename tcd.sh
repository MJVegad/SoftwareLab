#/bin/bash

# Timed cd

# A student has 3 lab courses: CS599, CS699, CS799 with the following
# schedule:
# CS599: Mon 2-5pm
# CS699: Wed 2-5pm
# CS799: Fri 2-5pm
# The student has 3 sub-directories CS599, CS699, CS799 in the current
# directory

# Write a script to take two arguments:
# Argument-1: day of the week in 3-letter capitalized format
# (e.g. Wed, Fri, Sat, etc.)
# Argument-2: hour of the day in 24-hour format (0-23)
# The script should print the name of the directory corresponding to
# the lab course at that time
# The script should print an appropriate error message if it does not
# get exactly two arguments
# If the time window does not match any of the lab timings, then the
# script should print "." (i.e. the current directory)

DAY=$1
TIME=$2

if [ $# -eq 2 ]; then
  if [ $TIME -lt 14 ] || [ $TIME -gt 17 ]; then
       echo ".";
  else
     
     if [ "$DAY" = "Mon" ]; then
        echo "./CS599";
     elif [ "$DAY" = "Wed" ]; then
        echo "./CS699";
     elif [ "$DAY" = "Fri" ]; then
        echo "./CS799";
     else
        echo "Please enter correct day.";
     fi  
  fi
else
  echo "supply valid no. of arguments.";
fi
