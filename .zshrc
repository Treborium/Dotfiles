export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/Treborium/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# NNN related stuff
export EDITOR="gedit"
export NNN_FALLBACK_OPENER="xdg-open"
export NNN_COPIER="$HOME/.config/nnn/copier.sh"
export NNN_USE_EDITOR=1
export NNN_TMPFILE="/tmp/nnn"
export DISABLE_FILE_OPEN_ON_NAV=1

ZSH_THEME="spaceship"

plugins=(
  git
  sudo
  extract
  colored-man-pages
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias install="sudo dnf install -y"
alias update"sudo dnf update"
alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"
alias i3-config="$EDITOR ~/.config/i3/config"
alias todo="todolist"
alias exe="chmod +x"
alias sudo="sudo "  # allow aliases to be sudoed


n()
{
  nnn "$@"

  if [ -f $NNN_TMPFILE ]; then
    . $NNN_TMPFILE
    rm $NNN_TMPFILE
  fi
}

open() {
  xdg-open "$1" &
}

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fdh() {
  cd /home/Treborium
  fd
}

mfdir() {
  mkdir "$1"
  cd "$1"
}

mf() {
  mv "$1" "$2"
  cd "$2"
}

cf() {
  cp "$1" "$2"
  cd "$2"
}

# These lines have to be at the end of the file!
# Don't write anyhting below them
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
