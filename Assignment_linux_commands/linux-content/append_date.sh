#! /bin/bash

touch aaa.log.1 bbb.log.1 ccc.log.1 ddd.log.1
echo files created : *.log.1

for file in `ls *.log.1`;
do
	file1=`echo $file | awk -F. '{print $1}'`;
	echo $file1;
	date_append=`date +"%d-%m-%Y"`;
	echo $date_append;
	append_file="${file1}.${date_append}.log";
	echo $append_file;
	mv $file $append_file;
	echo date appended sucessfully;
done
