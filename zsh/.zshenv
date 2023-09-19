. "$HOME/.cargo/env"

# Path
PATH=$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=$HOME/.config/scripts:$PATH
PATH=$HOME/.emacs.d/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.bun/bin:$PATH
PATH=/opt/homebrew/bin:$PATH
PATH=/opt/homebrew/opt/curl/bin:$PATH
PATH=/opt/homebrew/opt/libpq/bin:$PATH
PATH=/opt/homebrew/opt/llvm/bin:$PATH
PATH=/opt/homebrew/sbin:$PATH
export PATH
typeset -U PATH path

# SSH-agent
export SSH_ASKPASS=ssh-askpass
export DISPLAY=":0"
if ! pgrep ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)" #> /dev/null 2>&1
fi
