# Vim
alias vim="nvim"

# ls shortcuts
alias ls="exa"
alias lt1="exa -TL1"
alias lt2="exa -TL2"
alias lt3="exa -TL3"

# Override zsh aliases
unalias l ll lr la lm lx lk lt lc lu >/dev/null 2>/dev/null

alias l="exa -1a"
alias ll="exa -l"
alias la="exa -la"
alias laa="exa -a"
alias lk="exa -s size"

# Cargo shortcuts
alias car="cargo run"
alias cab="cargo build"
alias cac="cargo check"

# Clip alias
alias -g clip='$(pbpaste)'

# Iterm cd tab
alias cdt="osascript -l JavaScript ~/.files/automation/cd-tab.applescript"

function mdfindg() {
    mdfind "kMDItemDisplayName=='$1'$2"
}
