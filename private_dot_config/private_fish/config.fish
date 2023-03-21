# Blank greeting
set fish_greeting ""

# Set editor to nvim
set -gx EDITOR nvim

# Add local bin dirs to PATH
set -U fish_user_paths /home/arttu/bin $fish_user_paths
set -U fish_user_paths /home/arttu/.local/bin $fish_user_paths

# Aliases
alias vim nvim
alias v nvim
alias r ranger
alias ls exa
alias la "exa -al"
alias cat bat
alias top btop
alias lab jupyter-lab
alias ds "conda activate ds"
alias base "eval /home/arttu/.miniconda3/bin/conda shell.fish hook $argv | source"

# Starship shell
starship init fish | source
