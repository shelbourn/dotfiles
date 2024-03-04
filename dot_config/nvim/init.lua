local vim = vim

-- config option initialization
require('config')

-- plugin initialization
require('plugins')

-- plugin config and keybinds
require('plugin-config')

-- language server initialization
require('lang-servers')

-- telescope initialization
-- require('telescope').setup()
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- syntax config
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- color scheme initialization
vim.cmd('colorscheme kanagawa-wave')
