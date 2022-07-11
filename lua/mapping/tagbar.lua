
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', '<C-x>', ':TagbarToggle<CR>', default_opt)

