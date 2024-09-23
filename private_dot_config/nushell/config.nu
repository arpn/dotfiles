$env.config = {
    show_banner: false

    filesize: {
        metric: true
    }

    hooks: {
        pre_prompt: [{ ||
            if (which direnv | is-empty) {
              return
            }
    
            direnv export json | from json | default {} | load-env
          }]
    }
}

alias vim = lvim
alias v = lvim
alias r = ranger
alias la = ls -al

source ~/.config/nushell/zoxide.nu
source ~/.config/nushell/starship.nu
