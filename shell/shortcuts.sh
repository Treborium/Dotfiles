source $HOME/Repositories/dotfiles/shell/functions.sh

zle -N fzf_search_for_directory

bindkey '^f' fzf_search_for_directory
