alias vim="nvim"
alias zshrc="vim ~/.zshrc"
alias initvim="vim ~/.config/nvim/init.vim"

# If you come from bash you might have to change your $PATH.
export PATH="/Users/max/Development/flutter/bin":$PATH
export PATH="/Users/max/Development/ghdl/bin":$PATH
export PATH="/usr/local/sbin":$PATH
export PATH="/Users/max/.local/bin":$PATH
export PATH="/Users/max/Library/Python/3.8/bin":$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/max/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    osx
)


[ -f "/Users/max/.ghcup/env" ] && source "/Users/max/.ghcup/env" # ghcup-env

source ~/.oh-my-zsh/oh-my-zsh.sh
