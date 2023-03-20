-- set leader to space
vim.g.mapleader = ' '
vim.g.localleader = ' '

-- plugins
require('packer-config')

-- set colorscheme
vim.g.colors_name = 'tokyonight'

vim.bo.shiftwidth = 4                                -- nof spaces for each indent level
vim.bo.tabstop = 4                                   -- nof spaces a tab corresponds to
vim.bo.softtabstop = 4                               -- make tabstop behave right when inserting <tab> or <bs>
vim.bo.expandtab = true                              -- replace tabs with  spaces
vim.bo.autoindent = true                             -- automatic indent for newlines
vim.wo.number = true                                 -- line numbers
vim.wo.colorcolumn = '80'                            -- mark 80 char column
vim.wo.cursorline = true                             -- highlight the current line
vim.o.mouse = 'a'
vim.o.splitright = true                              -- spawn vsplits to the right
vim.o.termguicolors = true                           -- use 24-bit colors in TUI
vim.o.background = 'dark'                            -- dark background
vim.o.completeopt = 'menu,menuone,noselect,preview'  -- insert mode completion options
vim.o.timeoutlen = 500                               -- timeout for which-key popup

-- exit to normal mode with kj
vim.keymap.set('i', 'kj', '<esc>')

-- move between panes with ctrl
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-l>', '<c-w>l')

-- move a lot with HJKL (normal and visual)
vim.keymap.set({'n', 'v', 'o'}, 'H', '0')
vim.keymap.set({'n', 'v', 'o'}, 'J', 'G')
vim.keymap.set({'n', 'v', 'o'}, 'K', 'gg')
vim.keymap.set({'n', 'v', 'o'}, 'L', '$')

-- switch buffers with tab
vim.keymap.set('n', '<tab>', '<cmd>bnext<cr>')
vim.keymap.set('n', '<s-tab>', '<cmd>bprevious<cr>')

-- goto normal mode with <esc> also in the terminal
vim.keymap.set('t', '<esc>', '<c-\\><c-n>')

-- open config files
vim.keymap.set('n', '<leader>ci', '<cmd>edit ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', '<leader>cl', '<cmd>edit ~/.config/nvim/lua/<cr>')

-- bindings for Telescope
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<cr>')

-- bindings for managing LSPs with Mason
-- actual LSP binds are in lspconfig
vim.keymap.set('n', '<leader>lss', '<cmd>Mason<cr>')
vim.keymap.set('n', '<leader>lsi', '<cmd>LspInfo<cr>')
vim.keymap.set('n', '<leader>lsx', '<cmd>LspStart<cr>')
vim.keymap.set('n', '<leader>lsk', '<cmd>LspStart<cr>')
vim.keymap.set('n', '<leader>lsr', '<cmd>LspRestart<cr>')

-- bindings for Packer
vim.keymap.set('n', '<leader>ps', '<cmd>PackerStatus<cr>')
vim.keymap.set('n', '<leader>pS', '<cmd>PackerSync<cr>')
vim.keymap.set('n', '<leader>pc', '<cmd>PackerClean<cr>')
vim.keymap.set('n', '<leader>pi', '<cmd>PackerInstall<cr>')
vim.keymap.set('n', '<leader>pu', '<cmd>PackerUpdate<cr>')

-- bindings for file tree
vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<cr>')

