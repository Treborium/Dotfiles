NPM_PACKAGES=$HOME/.npm/bin
PIP_PACKAGES=$HOME/.local/bin
RUBY_GEMS=$(ruby -e 'puts Gem.user_dir')/bin
SASS_BIN=$HOME/bin/dart-sass
GO_PACKAGES=$HOME/go/bin
CARGO=$HOME/.cargo/bin

export ANDROID_HOME=$HOME/Android/Sdk
ANDROID=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/build-tools

export PATH=$HOME/bin:$NPM_PACKAGES:$PIP_PACKAGES:$CARGO:$RUBY_GEMS:$SASS_BIN:/usr/local/bin:/usr/local/go/bin:$GO_PACKAGES:$ANDROID:$PATH
export ZSH="/home/treborium/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

prefix=${HOME}/.npm-package

unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# NNN related stuff
export EDITOR="/usr/bin/nano"
export VISUAL=$EDITOR
export NNN_FALLBACK_OPENER="xdg-open"
export NNN_COPIER="$HOME/.config/nnn/copier.sh"
export NNN_PLUG='c:fzcd;i:ipinfo;p:pskill'
export NNN_USE_EDITOR=1
export NNN_TMPFILE="/tmp/nnn"
export NNN_CONTEXT_COLOR='1234'
export DISABLE_FILE_OPEN_ON_NAV=1
export LC_COLLATE="C"
