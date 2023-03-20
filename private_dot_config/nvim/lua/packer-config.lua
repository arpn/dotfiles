-- package management
require('packer').startup(function()
    -- packer itself
    use 'wbthomason/packer.nvim'
    -- themes
    use 'savq/melange'
    use 'folke/tokyonight.nvim'
    -- statusline
    use 'nvim-lualine/lualine.nvim'
    -- statuslien icons
    use 'kyazdani42/nvim-web-devicons'
    -- tabline
    use 'akinsho/bufferline.nvim'
    -- dependency for telescope etc
    use 'nvim-lua/plenary.nvim'
    -- file tree
    use 'kyazdani42/nvim-tree.lua'
    -- fuzzy finder
    use 'nvim-telescope/telescope.nvim'
    -- commenting
    use 'numToStr/Comment.nvim'
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- git signs
    use 'lewis6991/gitsigns.nvim'
    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    -- code completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- popup for available keybindings
    use 'folke/which-key.nvim'
end)

-- configure plugins
-- statusline
require('lualine').setup {}
-- bufferline
require('bufferline').setup {}
-- icons
require('nvim-web-devicons').setup {}
-- file tree
require('nvim-tree').setup {}
-- telescope
require('telescope-config')
-- comment
require('Comment').setup {}
-- treesitter
require('treesitter-config')
-- gitsigns
require('gitsigns').setup {}
-- completion
require('completion-config')
-- lsp config
require('lsp-config')
-- mason
require('mason').setup {}
-- mason-lspconfig
require('mason-lspconfig').setup {}
-- which-key
require('which-key-config')
