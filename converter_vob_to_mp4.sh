#!/bin/bash

output_path=${1:-$PWD}

for file in $output_path/*.vob; do
    filename=${file::-4}
    ffmpeg -i "$file" "$filename.mp4"
done
