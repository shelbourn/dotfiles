local set = vim.opt
local global = vim.g
local keymap = vim.keymap.set
local cmd = vim.cmd
local api = vim.api

-- term colors
set.termguicolors = true

-- tab width, indentation, cursor
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
-- keybinds
-----

-- leaders
global.mapleader = ' '
global.maplocalleader = ' '

-- deselect (:noh)
keymap('n', '<Leader>noh', vim.cmd.noh)

-- yank into system clipboard
keymap({'n', 'v'}, '<leader>y', '"+y') -- yank motion
keymap({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- delete into system clipboard
keymap({'n', 'v'}, '<leader>d', '"+d') -- delete motion
keymap({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- paste from system clipboard
keymap('n', '<leader>p', '"+p')  -- paste after cursor
keymap('n', '<leader>P', '"+P')  -- paste before cursor

-- inserting lines above/below without leaving normal mode
keymap('n', '<leader>o', 'o<Esc>')  -- insert line below
keymap('n', '<leader>O', 'O<Esc>')  -- insert line above

-- active/inactive window highlights

-- background colors for active vs inactive windows
cmd([[
hi ActiveWindow guibg=#17252c
hi InactiveWindow guibg=#0D1B22

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

" Change highlight group of active/inactive windows
function! Handle_Win_Enter()
  setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endfunction
]])
