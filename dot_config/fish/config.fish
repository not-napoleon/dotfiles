fish_add_path /Users/marktozzi/.local/bin
set -x EDITOR nvim

set -l BREW $(type -p brew)

eval "$($BREW shellenv)"

fish_add_path $($BREW --prefix python)/libexec/bin
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
abbr -a g git
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
abbr -a --command git c commit

# Vim habbits
abbr -a lvim nvim
abbr -a vim nvim

if type -q zoxide
    zoxide init fish | source
    abbr -a cd z
else
    echo "consider installing zoxide `brew install zoxide`"
end

if type -q starship
    set -g -x STARSHIP_CONFIG ~/.config/starship/starship.toml
    starship init fish | source
else 
    echo "Consider installing Starship: `brew install starship`"
end

if type -q fastfetch
    function fish_greeting
        fastfetch
    end
else
    echo "consider installing fastfetch `brew install fastfetch`"
end

