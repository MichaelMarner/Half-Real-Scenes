#!/bin/bash
while read -e line
do
	echo $line
	filename="$line.xml"
	if [ ! -e $filename ] 
	then
		cp template.xml $filename
	else
		echo "$filename already exists!"
	fi
done
