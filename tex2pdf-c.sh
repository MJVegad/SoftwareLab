#/bin/bash

# This program should compile the latex file given as argument.  The
# tex file can be in any directory; its full path name or relative
# path name may be given as argument.  And if the latex compilation
# succeeds, it should tar-gzip the entire directory in which the latex
# file resides, from the parent directory, to a tgz file.  The name of
# the tgz file should be <dirname>.tgz where <dirname> is the name of
# the directory in which the latex file resides.  It should then move
# the tgz file to /tmp.

FILE=$1
echo $FILE
TEXFILE=`basename $FILE`
echo $TEXFILE
PARENT=`dirname $FILE`
echo $PARENT
GPARENT=`dirname $PARENT`
echo $GPARENT
BASE=`basename $PARENT`
echo $BASE
pdflatex $FILE
STATUS=$?

if [ "$BASE" = "." ];then
   BASE=$PWD
fi 
if [ $STATUS -eq 0 ];then
   echo "pdflatex returned with status $STATUS.";
   pushd $GPARENT;
   tar -zcvf "$BASE".tar.gz $BASE;
   mv "$BASE".tar.gz ~/../../tmp/;
   popd;

else
    echo "compilation failed:pdflatex returned with status $STATUS.";
fi

  

