local set = vim.opt
local global = vim.g
local keymap = vim.keymap.set

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

-- leaders
global.mapleader = ' '
global.maplocalleader = ' '

-- deselect (:noh)
keymap('n', '<Leader>noh', vim.cmd.noh)

-- Yank into system clipboard
keymap({'n', 'v'}, '<leader>y', '"+y') -- yank motion
keymap({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
keymap({'n', 'v'}, '<leader>d', '"+d') -- delete motion
keymap({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
keymap('n', '<leader>p', '"+p')  -- paste after cursor
keymap('n', '<leader>P', '"+P')  -- paste before cursor
