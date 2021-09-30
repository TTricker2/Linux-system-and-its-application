#!/bin/sh
if [ $# -lt 2 ]
then
    echo 'Input cannot be blank!'
    exit 0
elif [ $# -gt 2 ]
then
    echo 'Too many input!'
    exit 0   
fi

if [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
    echo 'Input must be greater than or eqult to 1'
    exit 0    
fi

for i in $(seq 1 $1)
do
    for j in $(seq 1 $2)
    do
	result=`expr $i \* $j`
	echo -n "$i*$j=$result "
    done
    echo ""
done
exit 0
