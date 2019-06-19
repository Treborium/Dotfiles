NPM_PACKAGES=$HOME/npm/bin
PIP_PACKAGES=$HOME/.local/bin
RUBY_GEMS=$HOME/.gem/ruby/2.6.0/bin
SASS_BIN=$HOME/bin/dart-sass
GO_PACKAGES=$HOME/go/bin

export PATH=$HOME/bin:$NPM_PACKAGES:$PIP_PACKAGES:$RUBY_GEMS:$SASS_BIN:/usr/local/bin::/usr/local/go/bin:$GO_PACKAGES:$PATH
export ZSH="/home/treborium/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export MDV_THEME=814.7803

# NNN related stuff
export EDITOR="/usr/local/bin/ne"
export VISUAL=$EDITOR
export NNN_FALLBACK_OPENER="xdg-open"
export NNN_COPIER="$HOME/.config/nnn/copier.sh"
export NNN_USE_EDITOR=1
export NNN_TMPFILE="/tmp/nnn"
export NNN_CONTEXT_COLOR='1234'
export DISABLE_FILE_OPEN_ON_NAV=1
