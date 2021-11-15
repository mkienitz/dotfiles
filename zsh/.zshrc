alias vim="nvim"
alias zshrc="vim ~/.zshrc"
alias initvim="vim ~/.config/nvim/init.vim"
alias code="code-insiders"

export ZSH="/Users/max/.oh-my-zsh"
export ZSH_THEME="robbyrussell"
eval "$(/opt/homebrew/bin/brew shellenv)"

plugins=(
    git
    macos
)
BAT_THEME="gruvbox-dark"
ZSH_THEME="agnoster"
source ~/.oh-my-zsh/oh-my-zsh.sh


# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
