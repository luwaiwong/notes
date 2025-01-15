#!/bin/bash

#path=/u/csc209h/winter/pub/shell-prog
path=.

for arg in "$@"
do
    ${path}/fibonacci "$arg"
done
