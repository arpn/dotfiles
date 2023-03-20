require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = require('telescope.actions').close
            }
        }
    },
    pickers = {
        find_files = {
            theme = 'dropdown'
        },
        live_grep = {
            theme = 'dropdown'
        },
        buffers = {
            theme = 'dropdown'
        }
    }
}

