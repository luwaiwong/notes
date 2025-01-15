#!/bin/bash

path=/u/csc209h/winter/pub/shell-prog

if [ "$#" -ne 2 ]; then
    echo "usage: $0 NUM FILENAME"
    exit 1
fi

upper="$1"
filename="$2"

# loop from 1 to $upper
for val in $(seq $upper);
do
    if ${path}/floop "$val" "$filename" > /dev/null;
    then
        :
    else
        echo "$val $filename" is floopy
    fi
done
