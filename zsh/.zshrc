# Promt configuration
setopt PROMPT_SUBST

function branch_name () {
    BRANCH=$(git branch 2>/dev/null | awk '{print $2}')
    if [[ $BRANCH == "" ]];
    then
        :
    else
        STATUS=$(git status -s | awk '{print $1}')
        if [[ $STATUS == "" ]];
        then
            echo " %F{7}$BRANCH%f"
        else
            echo " %F{13}$BRANCH%f"
        fi
    fi
}

PROMPT='%B%F{11}%n%f%F{10}@%f%F{202}%m%f %F{4}%~%f%(?.. %F{9}%?%f)$(branch_name)%b '


# Aliases
alias vim='nvim'
alias initvim='vim ~/.config/nvim/init.vim'
alias ls='exa'
alias ll='exa -l'
alias la='exa -la' 
alias l='ls'
alias zz='z -'
alias tree='exa -T'
alias python='python3'


# Homebrew
PATH=/opt/homebrew/bin:/Users/max/.local/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"


# Zoxide
eval "$(zoxide init zsh)"


# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


# Scripts
function edf() {
    find ~/.dotfiles ! -iwholename '*.git*' -type f | fzf | xargs -o nvim
}


