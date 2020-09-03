#!/bin/bash -x
for file in `ls *.text`
do
folder_name=`echo $file | awk -F. '{print  $1}'`;
if [ -d $folder_name ]
then
rm -r $folder_name;
fi
mkdir $folder_name;
mv  $file $folder_name;
done
