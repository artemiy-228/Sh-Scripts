i_path=$(dirname "$(realpath "$0")")

echo -n "Do you want to save the new video file in this directory? (yes, no): "
read t
echo ""

if [[ t -eq "no" ]] || [[ t -eq "n" ]]  || [[ t -eq "N" ]] || [[ t -eq "No" ]]; then
    echo -n "Input your path to file(first and last without /): "
    read i_path
    echo ""
else
    echo -n "Incorrect answer! Videos will be recorded in the directory: $i_path/mp4_videos"
    echo ""
fi

echo -n "Input path to file with your videos(first and last without /): "
read o_path
echo ""


mkdir -p /$i_path/mp4_videos/

for file in /$o_path/*.vob; do
    filename=$(basename "$file")
    filename="${filename%.*}"

    ffmpeg -i "$file" "/$i_path/mp4_videos/${filename}.mp4"
done
