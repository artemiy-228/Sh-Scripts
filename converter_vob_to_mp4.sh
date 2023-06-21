#!/bin/bash

output_path=${1:-$PWD}

for file in $output_path/*.vob; do
    ffmpeg -i $file ${file::-4}.mp4
done
