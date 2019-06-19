alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"
alias exe="chmod +x"
alias sudo="sudo "  # allow aliases to be sudoed


# override ls with colorls
alias ls='lsd'
alias l='ls -l'
alias ll='ls -la'
alias lt='ls --tree'

# override cp and mv for alternatives with progress bar
alias cp='cpg -gR'
alias mv='mvg -g'
alias xclip='xclip -sel clip'


# list running / enabled services
alias running-services='systemctl | grep running'
alias enabled-services='systemctl list-unit-files | grep enabled'
alias logs='sudo journalctl -f -b'

# git related aliases
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gl='git log'
alias gp='git pull'
alias gf='git fetch'
alias gg='git push'
alias pf='push --force-with-lease'

alias diff='colordiff'
