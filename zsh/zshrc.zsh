export ZPLUG_HOME="$ZSHDIR/zplug"
source "$ZPLUG_HOME/init.zsh"

zplug mafredri/zsh-async
zplug "sindresorhus/pure"

# Zprezto config (todo: move to file)
# Must be set prior to module loading
zstyle ':prezto:*:*' case-sensitive 'no'
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:editor' key-bindings 'emacs'
zstyle ':prezto:module:editor' dot-expansion 'yes'
zstyle ':prezto:module:gnu-utility' prefix 'g'
zstyle ':prezto:module:syntax-highlighting' pattern \
	'rm -rf*' 'fg=white,bold,bg=red'

zplug "modules/environment", from:prezto
zplug "modules/terminal", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/history", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/spectrum", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/fasd", from:prezto
zplug "modules/git", from:prezto
zplug "modules/osx", from:prezto
zplug "modules/python", from:prezto
zplug "modules/archive", from:prezto
zplug "modules/homebrew", defer:2, from:prezto, if:"[[ $OSTYPE == *darwin* ]]"

zplug "zsh-users/zsh-history-substring-search"

zplug "zdharma/fast-syntax-highlighting", defer:0

zplug "unixorn/git-extra-commands"
zplug "djui/alias-tips"
zplug "$ZSHDIR/contrib/dotenv", from:local


# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load


# load iterm tools
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# load gcp tools
for inc (/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/{completion,path}.zsh.inc) test -e $inc && source $inc

# load personal configs
for config ($HOME/.dotfiles/zsh/configs/*.zsh) source $config


# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

