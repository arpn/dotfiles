# Blank greeting
set fish_greeting ""

# Set editor to lvim
set -gx EDITOR lvim

# Set preferred shell to fish
set -gx SHELL fish

# Point out system locales for nix packages
set -gx LOCALE_ARCHIVE /usr/lib/locale/locale-archive

if status is-interactive
    # Aliases
    alias vim lvim
    alias v lvim
    alias r ranger
    # alias ls exa
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
end
