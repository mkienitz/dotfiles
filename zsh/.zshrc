alias vim="nvim"
alias zshrc="vim ~/.config/zsh/.zshrc"
alias initvim="vim ~/.config/nvim/init.vim"

export ZSH="/Users/max/.oh-my-zsh"
eval "$(/opt/homebrew/bin/brew shellenv)"

plugins=(
    git
    macos
    # vi-mode
)

BAT_THEME="gruvbox-dark"
ZSH_THEME="agnoster"
source ~/.oh-my-zsh/oh-my-zsh.sh

PATH=$PATH:~/.config/scripts
PATH=/opt/homebrew/bin:$PATH
export PATH

# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
