#!/bin/sh

totalArgs=$#

if [ ${totalArgs} -eq 2 ]
    then
    dir=$(dirname $1)
    str=$2
    if [ ! -d ${dir} ]
    then
        echo "Creating path ${dir}"
        mkdir -p ${dir}
    fi
    echo ${str} > $1
else
    echo "Expected 2 arguments, received $#"
    exit 1
fi

