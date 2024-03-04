local vim = vim
local Plug = vim.fn['plug#']

-- plugins [start]
vim.call('plug#begin')

-- lsp
Plug('rust-lang/rust.vim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('mrcjkb/rustaceanvim', {
    ['tag'] = '4*'
})

-- completion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')

-- status line
Plug('konapun/vacuumline.nvim')
Plug('glepnir/galaxyline.nvim', {
    ['branch'] = 'main'
})
Plug('nvim-tree/nvim-web-devicons')
Plug('folke/lsp-colors.nvim')

-- telescope
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {
    ['tag'] = '0.1.5'
})
Plug('nvim-telescope/telescope-fzf-native.nvim')

-- diagnostics
Plug('folke/trouble.nvim', {
    ['dependencies'] = 'nvim-tree/nvim-web-devicons'
})

-- theme
Plug('rebelot/kanagawa.nvim')

vim.call('plug#end')
-- plugins end

-- status line theme
require('vacuumline').setup({
    theme = require('vacuumline.theme.nord')
    -- theme = require('vacuumline.theme.gruvbox')
    -- theme = require('vacuumline.theme.one-dark')
})

-- telescope initialization and config
require('telescope').setup()
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
