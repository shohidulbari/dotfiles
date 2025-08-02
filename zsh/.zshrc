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

alias nc='nc-docker'
alias ncs='nc-docker shell'
alias nct='nc-docker tail'
alias ncu='nc-docker up'
alias localdev='pyenv activate localdev'
alias cmp='nc-docker up cmp-client'
alias ncps='nc-docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'

alias w-logs='(cd - && make logs web-api)'
alias p-logs='(cd - && make logs public-api)'
export PATH=$PATH:$(go env GOPATH)/bin