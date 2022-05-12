setopt PROMPT_SUBST
eval "$(/opt/homebrew/bin/brew shellenv)"

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

alias vim='nvim'
alias zshrc='vim ~/.zshrc'
alias szsh='source ~/.zshrc'
alias initvim='vim ~/.config/nvim/init.vim'
alias ls='exa'
alias ll='exa -l'
alias la='exa -la' 

PROMPT='%B%F{11}%n%f%F{10}@%f%F{202}%m%f %F{4}%~%f%(?.. %F{9}%?%f)$(branch_name) > %b'



export PATH=/opt/homebrew/bin:$PATH

# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
