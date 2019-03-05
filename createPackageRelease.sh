#!/usr/bin/env bash
input=$1
while IFS= read -r var
do
    if [ ! -d "$var" ]; then
        rsync -R "$var" $2
    fi
done < "$input"