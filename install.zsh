# Zprezto and zsh
ln -sf ~/.dotfiles/zsh/prezto/runcoms/zshenv ~/.zshenv
ln -sf ~/.dotfiles/zsh/zpreztorc.zsh ~/.zpreztorc
ln -sf ~/.dotfiles/zsh/zprofile.zsh ~/.zprofile
ln -sf ~/.dotfiles/zsh/zshrc.zsh ~/.zshrc

# Slack Mods
ln -sf ~/.dotfiles/slack_mods/ ~/.slack_mods

# Neovim
mkdir -p ~/.config/nvim/
if [[ -e ~/.config/nvim/init.vim ]]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bk
fi
echo "source ~/.dotfiles/vim/init.vim" > ~/.config/nvim/init.vim
