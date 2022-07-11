
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opt)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opt)
map('n', '<C-q>', ':BufferLinePickClose<CR>', default_opt)
