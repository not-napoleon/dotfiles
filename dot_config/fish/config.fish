fish_add_path /Users/marktozzi/.local/bin
set -x EDITOR nvim

eval "$(/opt/homebrew/bin/brew shellenv)"

fish_add_path $(brew --prefix python)/libexec/bin
fish_add_path /Users/marktozzi/.pyenv/shims
fish_vi_key_bindings

fish_config theme choose catppuccin-mocha --color-theme=dark

# chezmoi
if type -q chezmoi
    abbr -a cz chezmoi
    abbr -a cza chezmoi add
    abbr -a czr chezmoi re-add
end

if type -q lsd
    abbr -a ls lsd
    abbr -a tree lsd --tree
else
    echo "consider installing lsd for better ls"
end

if type -q fd 
    abbr -a find fd
end

# Git
abbr -a gs git status
abbr -a ga git add
abbr -a gaa git add --all
abbr -a gc git commit
abbr -a gcm --set-cursor "git commit -m '%'"
abbr -a gp git push
abbr -a gl git log --oneline
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gb git branch
abbr -a --command git co checkout 
abbr -a --command git br branch
abbr -a --command git st status

# Vim habbits
abbr -a lvim nvim
abbr -a vim nvim

if type -q zoxide
    zoxide init fish | source
else
    echo "consider installing zoxide for better directory navigation"
end

if type -q starship
    set -g -x STARSHIP_CONFIG ~/.config/starship/starship.toml
    starship init fish | source
end
