#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Wrong no: of arguments"
	exit 1
fi

if [ -f $1 ]
then
	if grep -Fxq "$2" $1
	then
		echo "Name already exists"
	else
		sed -i '$a '"$2" $1
        fi
else
	echo "File does not exists"
fi

f=$1
echo "File Contents"
while read f
do
	name=$f
	echo "$name"
done < $1
 
