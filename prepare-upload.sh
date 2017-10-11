#!/bin/bash

FILES="
get-ip-a.sh \
get-ip.sh \
myopen-a.sh \
myopen.cfg \
myopen-generic-a.sh \
myopen-generic.sh \
myopen.sh \
num-uploaded.sh \
photo-dates-a.sh \
photo-dates.sh \
photo-rename.sh \
tar-scp.sh \
tcd.sh \
tex2pdf-a.sh \
tex2pdf-b.sh \
tex2pdf-c.sh \
tex2pdf.sh \
prepare-upload.sh \
"

if [ -d forupload ]; then
	echo "Dir forupload already exists; delete or move and rerun"
	exit 1
fi

mkdir forupload
allfilesfound=1
for f in $FILES
do
	if [ ! -f "$f" ]; then
		echo "File $f not found; file must be included even if question not attempted"
		allfilesfound=0
	fi
done

if [ $allfilesfound -eq 0 ]; then
	exit 2
fi

for f in $FILES
do
	cp $f forupload
done

tar zcvf forupload.tgz forupload

echo "forupload.tgz is ready for upload"

