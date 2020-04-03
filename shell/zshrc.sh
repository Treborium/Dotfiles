INCLUDE_FILES_DIR=$HOME/Repositories/Dotfiles/shell

# ZSH related stuff
ZSH_THEME="spaceship"

plugins=(
  git
  sudo
  extract
  colored-man-pages
  zsh-autosuggestions
)

source $INCLUDE_FILES_DIR/variables.sh
source $INCLUDE_FILES_DIR/aliases.sh
source $INCLUDE_FILES_DIR/shortcuts.sh
source $ZSH/oh-my-zsh.sh

# These lines have to be at the end of the file!
# Don't write anyhting below them

source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=($fpath "/home/treborium/.zfunctions")

eval "$(starship init zsh)"
eval "$(lua /home/treborium/Repositories/z.lua/z.lua --init zsh)"

export NVM_DIR="/home/treborium/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
