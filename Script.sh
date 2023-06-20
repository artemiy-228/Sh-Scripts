echo -n "Input username: "
read username

mkdir -p /home/$username/Desktop/mp4_videos/

for file in /home/$username/Desktop/video/*.vob; do
    filename=$(basename "$file")
    filename="${filename%.*}"

    ffmpeg -i "$file" "/home/$username/Desktop/mp4_videos/${filename}.mp4"
done
