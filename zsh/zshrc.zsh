# Source Prezto.
if [[ -s "$HOME/.files/zsh/prezto/init.zsh" ]]; then
  source "$HOME/.files/zsh/prezto/init.zsh"
fi

# Config here

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -e "/Users/Jack/Downloads/google-cloud-sdk/path.zsh.inc" && source /Users/Jack/Downloads/google-cloud-sdk/path.zsh.inc

for config ($HOME/.files/zsh/configs/*.zsh) source $config
