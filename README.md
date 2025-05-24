# Hyprland dotfiles
based on [dots by imbypass](https://github.com/imbypass/dots)

<hr>

- Color Scheme: [base16/oxocarbon-dark](https://github.com/nyoom-engineering/base16-oxocarbon)
- Terminal: [alacritty smooth cursor](https://github.com/GregTheMadMonk/alacritty-smooth-cursor)
- Shell: [fish](https://fishshell.com/)
- File Manager (GUI): [Nautilus](https://apps.gnome.org/Nautilus/)
- Taskbar: [waybar](https://github.com/alexays/waybar)
- Launcher: [walker](https://github.com/abenz1267/walker)

<hr>

## Installation
source [here](https://www.atlassian.com/git/tutorials/dotfiles)
```
git clone --bare https://github.com/deezhizyu/dotfiles $HOME/dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $@
}
mkdir -p dotfiles-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} dotfiles-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

## Weather location
for privacy reasons location for wayber weather stored in an untracked file

just put your city name into `~/.config/wttrloc.txt`

## Preview
![image](https://0x0.st/8xPV.png)
