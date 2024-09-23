-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- plugins
lvim.plugins = {
  -- General plugins
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  -- Themes
  { "lunarvim/colorschemes" },
  { "rebelot/kanagawa.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "savq/melange-nvim" },
  { "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({
        dark_variant="dawn",
      })
    end,
  },
  { "catppuccin/nvim" },
  -- LLM plugins for testing
  { "David-Kunz/gen.nvim" },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        display_mode = "horizontal-split",
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
}

-- colorscheme
lvim.colorscheme = "rose-pine-moon"

-- settings
vim.wo.colorcolumn = "88" -- mark 88 char column
vim.o.timeoutlen = 500 -- timeout for which-key popup

-- keymaps
lvim.lsp.buffer_mappings.normal_mode["K"] = nil -- lsp mapping takes precedence, so it has to be first removed
lvim.keys.normal_mode["<tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<s-tab>"] = ":bprevious<cr>"
vim.keymap.set({ "n", "v", "o" }, "H", "0")
vim.keymap.set({ "n", "v", "o" }, "J", "G")
vim.keymap.set({ "n", "v", "o" }, "K", "gg")
vim.keymap.set({ "n", "v", "o" }, "L", "$")
lvim.keys.normal_mode["<leader>i"] =
	'oimport inspect, IPython; print("\\n", inspect.currentframe().f_code.co_name.upper())<cr>IPython.embed()<esc>'
