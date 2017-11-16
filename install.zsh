BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

# Zprezto and zsh
ln -sf "$BASEDIR/zsh/prezto/" ~/.zprezto/
ln -sf "$BASEDIR/zsh/prezto/runcoms/zshenv" ~/.zshenv
ln -sf "$BASEDIR/zsh/zpreztorc.zsh" ~/.zpreztorc
ln -sf "$BASEDIR/zsh/zprofile.zsh" ~/.zprofile
ln -sf "$BASEDIR/zsh/zshrc.zsh" ~/.zshrc

# Slack Mods
ln -sf "$BASEDIR/slack_mods/" ~/.slack_mods

# Neovim
mkdir -p ~/.config/nvim/
if [[ -e ~/.config/nvim/init.vim ]]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bk
fi
echo "source $BASEDIR/vim/init.vim" > ~/.config/nvim/init.vim
