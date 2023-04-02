-- Добавление ескейпа на комбинацию клавиш
Map({ "i", "v" }, "jk", "<ESC>", { silent = true })
Map({ "i", "v" }, "kj", "<ESC>", { silent = true })

-- Работа с вим конфигом
Map("n", "<F3>", ":source %<CR>", { silent = true })
Map("n", "<F4>", ":PlugInstall<CR>", { silent = true })

-- Выделить весь текст
Map("n", "<C-a>", "ggVG", { silent = true })

-- Сохранить
Map("n", "<C-s>", ":w<CR>", { silent = true })

-- Снятие выделения двойным пробелом
Map("n", "<space><space>", ":nohlsearch<CR>", { silent = true })

-- Отключение не знаю чего, но мешает
Map("n", "c", "", { silent = true })

-- Работа с табами
Map({ "i", "v" }, "<S-Tab>", "<C-D>", { silent = true })
Map("v", "<Tab>", ">gv", { silent = true })
