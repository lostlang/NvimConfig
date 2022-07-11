
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_opt)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opt)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opt)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opt)

