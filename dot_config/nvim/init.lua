local vim = vim

-- config option initialization
require('config')

-- plugin initialization
require('plugins')

-- plugin config and keybinds
require('plugin-config')

-- language server initialization
require('lang-servers')

-- syntax config
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- color scheme initialization
vim.cmd('colorscheme kanagawa-wave')
