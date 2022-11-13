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
alias ls='exa'
alias ll='exa -l'
alias la='exa -la' 
alias llt='exa --long --tree'
alias l='ls'
alias zz='z -'
alias tree='exa -T'
alias python='python3'
alias ghci='TERM=dumb ghci'
alias lg='lazygit'
alias em='emacsclient -u -c -n'


# Homebrew
PATH=/opt/homebrew/bin:$PATH
PATH=/opt/homebrew/sbin:$PATH
PATH=/opt/homebrew/opt/llvm/bin:$PATH
PATH=/opt/homebrew/opt/curl/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.emacs.d/bin:$PATH
PATH=$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH
PATH=$HOME/.config/scripts:$PATH
export PATH
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# eval "$(/opt/homebrew/bin/brew shellenv)"


# Zoxide
eval "$(zoxide init zsh)"


# opam configuration
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null


# Scripts
function edf() {
    find ~/.dotfiles ! -iwholename '*.git*' -type f | fzf | xargs -o nvim
}



# [ -f "/Users/max/.ghcup/env" ] && source "/Users/max/.ghcup/env" # ghcup-env
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/Users/max/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
