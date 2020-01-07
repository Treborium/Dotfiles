# Quickly edit config files
alias zshrc="$EDITOR ~/.zshrc && source ~/.zshrc"
alias ea="$EDITOR ~/.aliases.sh && source ~/.zshrc" # edit aliases
alias ba='bat ~/.aliases.sh'	# list user defined aliases

alias exe="chmod +x"	# make a file executable
alias sudo="sudo "  # allow aliases to be sudoed
alias bin='eval "$(ls ~/bin | fzf)"' # list user scripts and execute selected


# override ls with colorls
alias ls='lsd'
alias l='lsd -l'
alias ll='lsd -la'
alias lt='lsd --tree'


# override cp and mv for alternatives with progress bar
# alias cp='cpg -gR'
# alias mv='mvg -g'
alias xclip='xclip -sel clip'


# list running / enabled services
alias running-services='systemctl | grep running'
alias enabled-services='systemctl list-unit-files | grep enabled'
alias logs='sudo journalctl -f -b'


alias diff='colordiff'


# network related aliases
alias ltc='netstat -nt'		# list current tcp connections
alias ltcl='netstat -ntl'	# list all tcp ports that the machine is listening on
