NPM_PACKAGES="${HOME}/npm"
PIP_PACKAGES=$HOME/.local/bin
RUBY_GEMS=$HOME/.gem/ruby/2.6.0/bin

export PATH=$HOME/bin:$NPM_PACKAGES/bin:$PIP_PACKAGES:$RUBY_GEMS:/usr/local/bin:$PATH
export ZSH="/home/treborium/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export MDV_THEME=814.7803

# NNN related stuff
export EDITOR=ne
export NNN_FALLBACK_OPENER="xdg-open"
export NNN_COPIER="$HOME/.config/nnn/copier.sh"
export NNN_USE_EDITOR=1
export NNN_TMPFILE="/tmp/nnn"
export NNN_CONTEXT_COLOR='1234'
export DISABLE_FILE_OPEN_ON_NAV=1

# ZSH related stuff
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

alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"
alias exe="chmod +x"
alias sudo="sudo "  # allow aliases to be sudoed

alias ls='colorls'
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'

alias running-services='systemctl | grep running'
alias enabled-services='systemctl list-unit-files | grep enabled'
alias logs='sudo journalctl -f -b'

alias cp='cpg -gR'
alias mv='mvg -g'
alias xclip='xclip -sel clip'
alias diff='colordiff'

alias ue4='DRI_PRIME=1 ~/Open_Source/UnrealEngine/Engine/Binaries/Linux/UE4Editor &'

alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gl='git log'
alias gp='git pull'
alias gf='git fetch'
alias gg='git push'


fam() {
 man "$@" | fzf
}

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

eval $(thefuck --alias fuck)

source $(dirname $(gem which colorls))/tab_complete.sh

eval "$(lua $HOME/Open_Source/z.lua/z.lua --init zsh)"

source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=($fpath "/home/treborium/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

export NVM_DIR="/home/treborium/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
