local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- Темы
Plug("tiagovla/tokyodark.nvim")
-- Иконки
Plug("kyazdani42/nvim-web-devicons")

-- Улучшение подсветки
Plug("nvim-treesitter/nvim-treesitter")
Plug("p00f/nvim-ts-rainbow")
-- Подсветка отступов
Plug("lukas-reineke/indent-blankline.nvim")
-- Подсветка цветов
Plug("norcalli/nvim-colorizer.lua")
-- Простое коментирование
Plug("numToStr/Comment.nvim")
-- Нижняя строка
Plug("nvim-lualine/lualine.nvim")
-- Строка влкадок
Plug("willothy/nvim-cokeline")
-- Дерево файлов
Plug("MunifTanjim/nui.nvim")
Plug("nvim-neo-tree/neo-tree.nvim")
-- Git разница
Plug("sindrets/diffview.nvim")
-- Поиско по файлам
Plug("nvim-telescope/telescope.nvim")
-- fzf для telescope
Plug("nvim-telescope/telescope-fzf-native.nvim")
-- Библиотека для работы telescope и diffview
Plug("nvim-lua/plenary.nvim")

-- LSP
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("jay-babu/mason-null-ls.nvim")
Plug("neovim/nvim-lspconfig")
Plug("L3MON4D3/LuaSnip")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("saadparwaiz1/cmp_luasnip")

-- Copilot
Plug("zbirenbaum/copilot.lua")
Plug("zbirenbaum/copilot-cmp")

-- Terminal
Plug("akinsho/toggleterm.nvim")

-- Инфа по ошибкам
Plug("folke/trouble.nvim")

-- Линтер общего назначения
Plug("jose-elias-alvarez/null-ls.nvim")

vim.call("plug#end")
