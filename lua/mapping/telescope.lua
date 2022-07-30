
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', 'ff', '<cmd>Telescope find_files<cr>', default_opt)
map('n', 'fg', '<cmd>Telescope live_grep<cr>', default_opt)

