# Blank greeting
set fish_greeting ""

# Set editor to nvim
set -gx EDITOR nvim

# Add local bin dirs to PATH
set -U fish_user_paths /home/arttu/bin $fish_user_paths
set -U fish_user_paths /home/arttu/.local/bin $fish_user_paths

if status is-interactive
    # Aliases
    alias vim nvim
    alias v nvim
    alias r ranger
    alias ls exa
    alias la "exa -al"
    alias cat bat
    alias top btop
    alias lab jupyter-lab

    # Starship shell
    starship init fish | source

    # Hook for direnv
    direnv hook fish | source

    # Atuin shell history
    atuin init fish --disable-up-arrow | source

    # Zoxide init
    zoxide init fish | source

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /home/arttu/.miniconda3/bin/conda
        eval /home/arttu/.miniconda3/bin/conda "shell.fish" "hook" $argv | source
    end
    # <<< conda initialize <<<
end
