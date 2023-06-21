#!/bin/bash

if [ -n "$1" ]; then
    output_path=$1
else
    output_path=$PWD
fi

for file in /$output_path/*.vob; do
    filename=${file::-3}
    ffmpeg -i "$file" "/$output_path$filenamemp4"
done
