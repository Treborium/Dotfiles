NPM_PACKAGES=$HOME/.npm-packages
PIP_PACKAGES=$HOME/.local/bin

export PATH=$HOME/bin:$NPM_PACKAGES/bin:$PIP_PACKAGES:/usr/local/bin:$PATH
export ZSH="/home/treborium/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

export MDV_THEME=814.7803

# NNN related stuff
export EDITOR=ne
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

alias install="sudo pacman -S "
alias update"sudo pacman -Syu"
alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"
alias i3-config="$EDITOR ~/.config/i3/config"
alias todo="todolist"
alias exe="chmod +x"
alias sudo="sudo "  # allow aliases to be sudoed


#md() {
#  mdv "$1" | less
#}

n() {
  nnn "$@"

  if [ -f $NNN_TMPFILE ]; then
    . $NNN_TMPFILE
    rm $NNN_TMPFILE
  fi
}

open() {
  nohup xdg-open "$1" </dev/null &>/dev/null &
}

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fdh() {
  cd /home/treborium
  # fd

  if [ $# -eq 0 ]
    then
      fd
    else
      fd_with_arguments "$@"
  fi
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

fd_with_arguments() {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]
  then
     if [[ -d $file ]]
     then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}

# These lines have to be at the end of the file!
# Don't write anyhting below them
eval "$(lua $HOME/Open_Source/z.lua/z.lua --init zsh)"
source "$HOME/.sdkman/bin/sdkman-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
