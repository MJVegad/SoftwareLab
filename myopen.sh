#!/bin/bash

# This script should take exactly one argument, a file.  It should
# invoke emacs on the file if the file has a txt extension.  It should
# invoke firefox on the file if the file has a html extension.  It
# should invoke evince on the file if the file has a pdf extension.
# It should exit reporting error if the file has no extension or if it
# has some other extension

FILE=$1
FILENAME=`basename $FILE`
EXT="${FILENAME#*.}"

if [ $# -lt 1 ]; then
  echo "Please enter .txt/.pdf/.html file.";
else
 if [ "$EXT" = "txt" ]; then
   emacs $FILE;
 elif [ "$EXT" = "html" ]; then
   firefox $FILE;
 elif [ "$EXT" = "pdf" ]; then
   evince $FILE;
 else
   echo "Invalid file extension.";
 fi
fi


