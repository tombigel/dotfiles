#!/usr/bin/env bash

# Update .zshrc with installed brew packages and with relevant plugins, 
# this does not check for existing settings
echo "Updating .zshrc with plugins and some installed packages prerequisits"

cat >> ~/test << EOF
plugins=(git github git-prompt brew brew-cask npm nvm jira sublime atom z grunt osx yarn zsh_reload)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
EOF
