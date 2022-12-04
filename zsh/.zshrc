# Promt configuration
setopt PROMPT_SUBST

# Scripts
function edf() {
    find ~/.dotfiles ! -iwholename '*.git*' -type f | fzf | xargs -o nvim
}

function branch_name () {
    BRANCH=$(git branch 2>/dev/null | awk '{print $2}' | xargs)
    if [[ $BRANCH == "" ]];
    then
        :
    else
        STATUS=$(git status -s | awk '{print $1}' | xargs)
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


# Environment Variables
PATH=/opt/homebrew/bin:$PATH
PATH=/opt/homebrew/sbin:$PATH
PATH=/opt/homebrew/opt/llvm/bin:$PATH
PATH=/opt/homebrew/opt/curl/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.emacs.d/bin:$PATH
PATH=$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH
PATH=$HOME/.config/scripts:$PATH
PATH="$HOME/.cargo/bin:$PATH"
export PATH
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export XDG_CONFIG_HOME="$HOME/.config"

# Zoxide
eval "$(zoxide init zsh)"


# Opam
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Zap
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"


# Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle :compinstall filename '/Users/max/.zshrc'
autoload -Uz compinit
compinit

