
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('n', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('n', '<enter>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('n', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('n', '<bs>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('n', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})

map('i', '<up>', '', default_opt)
map('i', '<down>', '', default_opt)
map('i', '<left>', '', default_opt)
map('i', '<right>', '', default_opt)

