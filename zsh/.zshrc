export PATH=/opt/homebrew/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


export COMPOSE_DOCKER_CLI_BUILD=1
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/libxslt/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

source ~/.nvm/nvm.sh

alias mypc='ssh sb@192.168.10.147'
alias nc='nc-docker'
alias ncs='nc-docker shell'
alias nct='nc-docker tail'
alias ncu='nc-docker up'
alias localdev='pyenv activate localdev'
alias cmp='nc-docker up cmp-client'
alias ncps='nc-docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'

alias ffm='ssh sb@116.202.19.216'
alias find_port='sudo lsof -i'
alias lmsp='ssh -L 2024:128.140.82.157:2024 -L 27018:128.140.82.157:27017 sb@128.140.82.157'
alias lmspwd='ssh -L 2024:128.140.82.157:2024 sb@128.140.82.157'

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias tmuxa='tmux attach-session -t'
alias tmuxn='tmux new-session -s'
alias tmuxk='tmux kill-session -t'

#eval "$(starship init zsh)"
