local vim = vim
local Plug = vim.fn['plug#']

-- plugins [start]
vim.call('plug#begin')


-- completion
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('rafamadriz/friendly-snippets')

-- diagnostics
Plug('folke/trouble.nvim', {
    ['dependencies'] = 'nvim-tree/nvim-web-devicons'
})

-- formatting
Plug('prettier/vim-prettier', {
    ['do'] = 'yarn install --frozen-lockfile --production',
    ['for'] = {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'}
})

-- lsp
Plug('rust-lang/rust.vim')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('mrcjkb/rustaceanvim', {
    ['tag'] = '4*'
})

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
    ['tag'] = '0.1.x'
})
Plug('nvim-telescope/telescope-fzf-native.nvim')


-- theme
Plug('rebelot/kanagawa.nvim')

vim.call('plug#end')
-- plugins end

