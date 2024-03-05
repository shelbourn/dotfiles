-----
--local vars
-----

local keymap = vim.keymap.set
local cmd = vim.cmd
local global = vim.g

-----
--color scheme initialization
-----

cmd('colorscheme kanagawa-wave')

-----
--Configs and keybinds for plugins
-----

-- status line theme
require('vacuumline').setup({
    theme = require('vacuumline.theme.nord')
    -- theme = require('vacuumline.theme.gruvbox')
    -- theme = require('vacuumline.theme.one-dark')
})

-- telescope initialization and config
require('telescope').setup()
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})

local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

-- trouble keybinds
keymap("n", "<leader>xx", function() require("trouble").toggle() end)
keymap("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
keymap("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
keymap("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
keymap("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
keymap("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- prettier path resolution (`which prettier` -- then follow the symlink
global['prettier#exec_cmd_path'] = '/usr/local/lib/node_modules/prettier/bin/prettier.cjs'
