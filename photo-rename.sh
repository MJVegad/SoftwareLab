#!/bin/bash

DIR=$1

if [ $# -lt 1 ]; then
  echo "please enter the directory name.";
  exit 1;
else
 if [ -d "$DIR" ]; then
  pushd $DIR;
  RENAMEITEMS="$(ls [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]*.jpg)";

  if [ $RENAMEITEMS ];then
   for i in "$RENAMEITEMS"; do
    echo ${#i}
    if [ ${#i} -gt 12 ]; then
     mv $i "${i:4:4}-${i:2:2}-${i:0:2}-${i:8:${#i}}";
    else
     mv $i "${i:4:4}-${i:2:2}-${i:0:2}${i:8:${#i}}";
    fi
   done
  else
   echo "No such file to rename.";
  fi
  popd
  else
   echo "$DIR is not a directory.";
   exit 2;
  fi
fi 
