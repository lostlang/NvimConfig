-- Добавление ескейпа на комбинацию клавиш
vim.keymap.set({ "i", "v" }, "jk", "<ESC>", { silent = true })
vim.keymap.set({ "i", "v" }, "kj", "<ESC>", { silent = true })

-- Работа с вим конфигом
vim.keymap.set("n", "<F3>", ":source %<CR>", { silent = true })

-- Выделить весь текст
vim.keymap.set("n", "<C-a>", "ggVG", { silent = true })

-- Сохранить
vim.keymap.set("n", "<C-s>", ":w<CR>", { silent = true })

-- Снятие выделения двойным пробелом
vim.keymap.set("n", "<space><space>", ":nohlsearch<CR>", { silent = true })

-- Отключение не знаю чего, но мешает
vim.keymap.set("n", "c", "", { silent = true })

-- Работа с табами
vim.keymap.set({ "i", "v" }, "<S-Tab>", "<C-D>", { silent = true })
vim.keymap.set("v", "<Tab>", ">gv", { silent = true })
