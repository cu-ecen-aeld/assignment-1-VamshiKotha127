#!/bin/sh

totalArg=$#
if [ ${totalArg} -eq 2 ]
then
    if [ -d ${filesdir} ]
    then
        filesdir=$1
        searchstr=$2
        X=$(find $1 -type f | wc -l)
        Y=$(grep -r ${searchstr} ${filesdir} | wc -l)
        echo "The number of files are ${X} and the number of matching lines are ${Y}"
    else
        echo "$1 is not a valid directory"
        exit 1
    fi
else
    echo "Usage: finder.sh filesdir searchstr --> requires two arguments."
    exit 1
fi



