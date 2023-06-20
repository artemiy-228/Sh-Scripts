path=$(dirname "$(realpath "$0")")
echo -n "Do you want to save this file's i folder in this directory? (yes, no)"
read t
if [ t -eq "no"] || [ t -eq "n"] || || [ t -eq "N"] || || [ t -eq "No"]; then
    echo -n "Input your path to file(firt and last without /): "
    read path
fi
read username



mkdir -p /path/mp4_videos/

for file in /home/$username/Desktop/video/*.vob; do
    filename=$(basename "$file")
    filename="${filename%.*}"

    ffmpeg -i "$file" "/path/mp4_videos/${filename}.mp4"
done
