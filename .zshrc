export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

## Nvim Setup
export EDITOR=nvim
# nvim always
alias vim=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export AWS_CONFIG_FILE="$HOME/.aws/config"
export AWS_SDK_LOAD_CONFIG=true

# setup go
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin
#export PATH=/Users/austinmcrane/Library/Python/3.10/bin:$PATH

autoload -U compinit; compinit
export PATH="$HOME/.local/bin:$PATH"

## Alias
# i will never use the disk util that gpt originally points to
alias gpt=/usr/local/bin/gpt
alias utc="date -u '+%D %H:%M UTC'"

## Optional configuration files
# NOTE: must be stay at end of file to be ran last
# check if file exists and if it does source it
# TODO: can this be simplified?
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi
if [ -f ~/.development.zsh ]; then
  source ~/.development.zsh
fi
