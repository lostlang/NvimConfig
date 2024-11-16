-- Работа с вим конфигом
vim.keymap.set("n", "<F5>", ":luafile $HOME/.config/nvim/init.lua<CR>", { silent = true })

-- Выделить весь текст
vim.keymap.set("n", "<C-a>", "ggVG", { silent = true })

-- Сохранить
vim.keymap.set("n", "<C-s>", ":w<CR>", { silent = true })

-- Снятие выделения двойным пробелом
vim.keymap.set("n", "<space><space>", ":nohlsearch<CR>", { silent = true })

-- Отключение не знаю чего, но мешает
vim.keymap.set("n", "c", "", { silent = true })

-- Работа с табами
vim.keymap.set("v", "<S-Tab>", "<gv", { silent = true })
vim.keymap.set("v", "<Tab>", ">gv", { silent = true })
