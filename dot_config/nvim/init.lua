local vim = vim

-- config option initialization
require('options')

-- plugin initialization
require('plugins')

-- language server initialization
require('lang-servers')

-- syntax config
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- color scheme initialization
vim.cmd('colorscheme kanagawa-wave')
