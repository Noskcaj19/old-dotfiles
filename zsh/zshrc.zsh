function load_PZT_mod() {
	zplugin ice svn silent; zplugin snippet PZT::modules/$1
}

function load_PZT_mod_async() {
	zplugin ice svn silent; zplugin ice wait"0"; zplugin snippet PZT::modules/$1
}

declare -A ZPLGM 
ZPLGM[HOME_DIR]="$ZSHDIR/zplugins"
# Load zplugin
source "$ZSHDIR/external/zplugin/zplugin.zsh"

# Pure prompt
zplugin ice pick"async.zsh" src"pure.zsh";
zplugin light sindresorhus/pure


# Zprezto config (todo: move to file)
# Must be set prior to module loading
zstyle ':prezto:*:*' case-sensitive 'no'
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:editor' key-bindings 'emacs'
zstyle ':prezto:module:editor' dot-expansion 'yes'
zstyle ':prezto:module:gnu-utility' prefix 'g'
zstyle ':prezto:module:syntax-highlighting' pattern \
	'rm -rf*' 'fg=white,bold,bg=red'

# Zprezto modules
load_PZT_mod environment
load_PZT_mod terminal
load_PZT_mod editor
load_PZT_mod history
load_PZT_mod directory
load_PZT_mod spectrum
load_PZT_mod utility
load_PZT_mod completion
load_PZT_mod fasd
load_PZT_mod git
load_PZT_mod osx
load_PZT_mod python
load_PZT_mod archive
load_PZT_mod_async homebrew


zplugin light zsh-users/zsh-history-substring-search 


# Load syntax highlighting with async power
zplugin ice wait"0" atinit"ZPLGM[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting


zplugin light unixorn/git-extra-commands
zplugin light djui/alias-tips
zplugin light $ZSHDIR/contrib/dotenv

# load iterm tools
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# load gcp tools
for inc (/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/{completion,path}.zsh.inc) test -e $inc && source $inc

# load personal configs
for config ($HOME/.dotfiles/zsh/configs/*.zsh) source $config


# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
