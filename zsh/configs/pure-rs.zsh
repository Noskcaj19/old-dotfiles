# Configure pure-rs prompt

function zle-line-init {
    PROMPT=`~/Documents/Development/Rust/pure-rs/target/release/pure-rs prompt -r "$?"`
  zle reset-prompt
}
zle -N zle-line-init

autoload -Uz add-zsh-hook

function _prompt_pure_rs_precmd() {
  ~/Documents/Development/Rust/pure-rs/target/release/pure-rs precmd
}
add-zsh-hook precmd _prompt_pure_rs_precmd

