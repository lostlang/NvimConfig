
local map = vim.api.nvim_set_keymap
local default_opt = {noremap = true, silent = true}

-- Добавление ескейпа на комбинацию клавиш
map('i', 'jk', '<esc>', default_opt)
map('i', 'kj', '<esc>', default_opt)
map('v', 'jk', '<esc>', default_opt)
map('v', 'kj', '<esc>', default_opt)

-- Работа с вим конфигом
map('n', '<F3>', ':source %<CR>', default_opt)
map('n', '<F4>', ':PlugInstall<CR>', default_opt)

-- Стандартные комбинации клавиш в вим
map('n', '<C-a>', 'ggVG', default_opt)
map('n', '<C-s>', ':w<CR>', default_opt)

-- Снятие выделения двойным пробелом
map('n', '<space><space>', ':nohlsearch<CR>', default_opt)

-- Отключение не знаю чего, но мешает
map('n', 'c', '', default_opt)

-- Работа с табами
map('i', '<S-Tab>', '<C-D>', default_opt)
map('v', '<Tab>', '>gv', default_opt)
map('v', '<S-Tab>', '<gv', default_opt)

-- Подсветка не латиницы

