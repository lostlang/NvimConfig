
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', '<C-c>', ':NvimTreeToggle<CR>', default_opt)
map('n', '<C-f>', ':NvimTreeFindFile<CR>', default_opt)

