local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- plugins [start]
Plug('rust-lang/rust.vim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')
Plug('mrcjkb/rustaceanvim', { ['tag'] = '4'})

-- theme
Plug('rebelot/kanagawa.nvim')

vim.call('plug#end')
