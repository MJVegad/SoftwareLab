#/bin/bash

# This program should compile the latex file given as argument, a tex
# file assumed to be in the current/working directory.  And if the
# latex compilation succeeds, it should tar-gzip the entire current
# directory (from the current directory) to a tgz file called
# paper.tgz.  It should then move the paper.tgz file to /tmp.

pdflatex paper
STATUS=$?
if [ $STATUS=0 ];then
    echo "pdflatex returned with status $STATUS.";
    tar -zcvf paper.tar.gz $PWD;
    mv ./paper.tar.gz ~/../../tmp/;
else
    echo "compilation failed:pdflatex returned with status $STATUS.";
fi

