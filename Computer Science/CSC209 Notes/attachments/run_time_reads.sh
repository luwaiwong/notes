#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "usage: $0 NUM FILENAME"
    exit 1
fi

times="$1"
filename="$2"

total=0

for i in $(seq $times); 
do
    num_reads=`./time_reads 1 output 2> /dev/null | cut -d " " -f 1`
    echo $num_reads reads on pass $i
    total=$(($total + $num_reads))
done

echo total is $total
echo average is `expr $total / $times`
