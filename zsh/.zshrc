setopt PROMPT_SUBST

function branch_name () {
    BRANCH=$(git branch 2>/dev/null | colrm 1 2)
    if [[ $BRANCH == "" ]];
    then
        :
    else
        echo $BRANCH
    fi
}

alias vim='nvim'
alias zshrc='vim ~/.zshrc'
alias initvim='vim ~/.config/nvim/init.vim'
alias ls='exa'
alias ll='exa -l'
alias la='exa -la' 

# export ZSH="/Users/max/.oh-my-zsh"
PROMPT='%B%F{11}%n%f%F{10}@%f%F{166}%m%f $(branch_name) %F{4}%~%f %(?..%F{9}%? %f)%b'
# export PS1='\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\H \[\e[0m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m\]$ \[\e[0m\]'
eval "$(/opt/homebrew/bin/brew shellenv)"

plugins=(
    git
    macos
    # vi-mode
)

BAT_THEME="gruvbox-dark"
ZSH_THEME="agnoster"
# source ~/.oh-my-zsh/oh-my-zsh.sh

PATH=$PATH:~/.config/scripts
PATH=/opt/homebrew/bin:$PATH
export PATH

# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
