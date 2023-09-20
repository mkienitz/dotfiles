# Keybinding
bindkey -e
bindkey -r "^P"
bindkey -r "^N"

# Goated
export EDITOR=nvim

export HISTSIZE=100000
export HISTFILE=~/.zsh_history
export SAVEHIST=100000

# Aliases
alias ghci='TERM=dumb ghci'
alias l='ls'
alias la='exa -la'
alias lg='lazygit'
alias ll='exa -l'
alias llt='exa --long --tree'
alias ls='exa'
alias sz='source ~/.zshrc'
alias tree='exa -T'
alias vim='nvim'
alias weather='curl wttr.in/Munich'
alias zz='z -'

# Environment Variables
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib -L/Library/Developer/CommandLineTools/SDKs/MacOSX13.3.sdk/usr/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export XDG_CONFIG_HOME="$HOME/.config"
export ZSH_DISABLE_COMPFIX=true

# Zoxide
eval "$(zoxide init zsh)"

# Opam
[[ ! -r /Users/max/.opam/opam-init/init.zsh ]] || source /Users/max/.opam/opam-init/init.zsh >/dev/null 2>/dev/null

# Completion
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	autoload -Uz compinit
	compinit -u
fi

# Zap
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"


# Direnv
eval "$(direnv hook zsh)"

# Starship shell
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# bun completions
[ -s "/Users/max/.bun/_bun" ] && source "/Users/max/.bun/_bun"
