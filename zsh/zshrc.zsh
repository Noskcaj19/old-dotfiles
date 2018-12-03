# Source Prezto.
if [[ -s "$HOME/.files/zsh/prezto/init.zsh" ]]; then
  source "$HOME/.files/zsh/prezto/init.zsh"
fi

# Config here

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

for inc (/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/{completion,path}.zsh.inc) test -e $inc && source $inc

for config ($HOME/.files/zsh/configs/*.zsh) source $config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
