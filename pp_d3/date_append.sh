#!/bin/bash -x
new_date="$(date '+%d_%m_%y')"
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
for file in `ls *.log.1`
do
file_name=`echo $file.-$new_date | awk -F. '{print $1$4"."$2"."$3}'`;
mv $file $file_name;
done
