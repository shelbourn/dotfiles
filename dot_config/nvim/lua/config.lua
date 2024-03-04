local set = vim.opt
local global = vim.g

set.termguicolors = true

set.autoindent = true
set.cursorline = true

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- numbered lines
set.nu = true
set.numberwidth = 2

set.listchars = { eol = '$', tab = '>-', trail = '~', extends = '>', precedes = '<' }
set.list = true

-- keymap
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
