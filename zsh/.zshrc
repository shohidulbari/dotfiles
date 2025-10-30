export PATH=/opt/homebrew/bin:$PATH

source ~/.nvm/nvm.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias tmuxa='tmux attach-session -t'
alias tmuxn='tmux new-session -s'
alias tmuxk='tmux kill-session -t'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias find_port='sudo lsof -i'

#eval "$(starship init zsh)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$(go env GOPATH)/binexport PATH="$HOME/.local/bin:$PATH"

alias logs='docker compose logs "$@" -ft'
