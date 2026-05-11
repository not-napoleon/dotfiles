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

if type -q zoxide
    zoxide init fish | source
else
    echo "consider installing zoxide for better directory navigation"
end

if type -q tide
    set --global tide_left_prompt_items vi_mode $tide_left_prompt_items
    tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='12-hour format' --rainbow_prompt_separators=Angled --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Solid --powerline_right_prompt_frame=Yes --prompt_connection_andor_frame_color=Dark --prompt_spacing=Sparse --icons='Many icons' --transient=No
end
