local set = vim.opt
local global = vim.g
local keymap = vim.keymap.set
local cmd = vim.cmd
local api = vim.api

set.termguicolors = true

set.autoindent = true
set.cursorline = true

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- numbered lines
set.nu = true
set.numberwidth = 4

set.listchars = { eol = '$', tab = '>-', trail = '~', extends = '>', precedes = '<' }
set.list = true

set.clipboard = 'unnamed'

-- syntax config
cmd('syntax on')
cmd('filetype plugin indent on')
-----
--keybinds
-----

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

-- Inserting lines above/below without leaving normal mode
keymap('n', '<leader>o', 'o<Esc>')  -- insert line below
keymap('n', '<leader>O', 'O<Esc>')  -- insert line above
