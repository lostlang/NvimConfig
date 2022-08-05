
-- Добавление ескейпа на комбинацию клавиш
Map('i', 'jk', '<esc>', Default_opt)
Map('i', 'kj', '<esc>', Default_opt)
Map('v', 'jk', '<esc>', Default_opt)
Map('v', 'kj', '<esc>', Default_opt)

-- Работа с вим конфигом
Map('n', '<F3>', ':source %<CR>', Default_opt)
Map('n', '<F4>', ':PlugInstall<CR>', Default_opt)

-- Стандартные комбинации клавиш в вим
Map('n', '<C-a>', 'ggVG', Default_opt)
Map('n', '<C-s>', ':w<CR>', Default_opt)

-- Снятие выделения двойным пробелом
Map('n', '<space><space>', ':nohlsearch<CR>', Default_opt)

-- Отключение не знаю чего, но мешает
Map('n', 'c', '', Default_opt)

-- Работа с табами
Map('i', '<S-Tab>', '<C-D>', Default_opt)
Map('v', '<Tab>', '>gv', Default_opt)
Map('v', '<S-Tab>', '<gv', Default_opt)

-- Подсветка не латиницы

