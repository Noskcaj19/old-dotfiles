# Source Prezto.
if [[ -s "$HOME/.dotfiles/zsh/prezto/init.zsh" ]]; then
  source "$HOME/.dotfiles/zsh/prezto/init.zsh"
fi

# more config here

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
