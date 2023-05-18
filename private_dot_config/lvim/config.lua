-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- plugins
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "rebelot/kanagawa.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "savq/melange-nvim" },
  { "rose-pine/neovim" },
  { "catppuccin/nvim" },
}

-- colorscheme
require('rose-pine').setup { dark_variant = 'moon' }
lvim.colorscheme = "rose-pine"

-- settings
vim.wo.colorcolumn = "88"  -- mark 88 char column
vim.o.timeoutlen = 500     -- timeout for which-key popup

-- keymaps
lvim.keys.normal_mode["H"] = "0"
lvim.keys.normal_mode["J"] = "G"
lvim.lsp.buffer_mappings.normal_mode["K"] = nil  -- lsp mapping takes precedence, so it has to be first removed
lvim.keys.normal_mode["K"] = "gg"
lvim.keys.normal_mode["L"] = "$"
lvim.keys.visual_mode["H"] = "0"
lvim.keys.visual_mode["J"] = "G"
lvim.keys.visual_mode["K"] = "gg"
lvim.keys.visual_mode["L"] = "$"
lvim.keys.normal_mode["<tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<s-tab>"] = ":bprevious<cr>"

-- lsp config
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { 
    name = "flake8",
    args = { "--max-line-length=88" },
  },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "proselint",
  },
}
