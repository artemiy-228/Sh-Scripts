#!/bin/bash

output_path=${1:-$PWD}
echo "All videos will be saved to this directory: $output_path"
echo ""

for file in $output_path/*.vob; do
    ffmpeg -i $file ${file::-4}.mp4
done

echo "All videos have been converted successfully"
