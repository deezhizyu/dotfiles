alias zed="zeditor"
alias kan="~/.local/bin/generate-kan"

function dots
  /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $argv
end