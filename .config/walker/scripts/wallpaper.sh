list=$(find -L "$HOME/.local/share/wallpapers/" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \))

while walls= read -r path; do
  name=$(b=${path##*/}; echo ${b%.*})

  # now thats some grade-A fuckery right there! learn bash betr bro!
  name=${name//_/ };
  name=${name//-/ };
  name=${name//   / };

  printf "image=$path;label=${name};exec=swww img --transition-fps 144 --transition-duration 1 -t fade $path && cp $path $HOME/.local/share/wallpapers/.wallpaper && $HOME/.local/bin/bde u colors && $HOME/.local/bin/bde rl pcmanfm;\n"
done <<< "$list"
