fish_add_path /Users/marktozzi/.local/bin
set -x EDITOR nvim

eval "$(/opt/homebrew/bin/brew shellenv)"

fish_add_path $(brew --prefix python)/libexec/bin
fish_add_path /Users/marktozzi/.pyenv/shims
fish_vi_key_bindings
