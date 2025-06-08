list=$(find -L "$HOME/.local/share/wallpapers/" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.mp4" \))

while walls= read -r path; do
    name=$(b=${path##*/}; echo ${b%.*})

    # now thats some grade-A fuckery right there! learn bash betr bro!
    name=${name//_/ };
    name=${name//-/ };
    name=${name//   / };

    # Check if the file is an mp4 video
    if [[ "${path,,}" == *_preview.jpg ]]; then
        continue
    elif [[ "${path,,}" == *.mp4 ]]; then
        preview_path="${path}_preview.jpg"

        if ! [[ -f $preview_path ]]; then
            ffmpeg -i $path -vframes 1 -q:v 2 $preview_path > /dev/null 2>&1
        fi

        printf "image=$preview_path;label=${name};exec=$HOME/.local/bin/harmonyctl vwp $path;\n"
    else
        printf "image=$path;label=${name};exec=$HOME/.local/bin/harmonyctl wp $path;\n"
    fi
done <<< "$list"
