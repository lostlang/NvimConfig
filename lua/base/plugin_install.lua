
local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- Темы
Plug "tiagovla/tokyodark.nvim"
-- Иконки
Plug "kyazdani42/nvim-web-devicons"

-- Улучшение подсветки
Plug "nvim-treesitter/nvim-treesitter"
-- Подсветка отступов
Plug "lukas-reineke/indent-blankline.nvim"
-- Подсветка скобок
Plug "p00f/nvim-ts-rainbow"
-- Подсветка цветов
Plug "norcalli/nvim-colorizer.lua"

-- Простое коментирование
Plug "numToStr/Comment.nvim"

-- Нижняя строка
Plug "nvim-lualine/lualine.nvim"
-- Строка влкадок
Plug "akinsho/bufferline.nvim"
-- Дерево файлов
Plug "nvim-tree/nvim-tree.lua"
-- Дерево файлов
Plug "preservim/tagbar"
-- Git разница
Plug 'sindrets/diffview.nvim'
-- Поиско по файлам
Plug "nvim-telescope/telescope.nvim"
-- fzf для telescope
Plug "nvim-telescope/telescope-fzf-native.nvim"
-- Библиотека для работы telescope и diffview
Plug "nvim-lua/plenary.nvim"

-- LSP
Plug "williamboman/nvim-lsp-installer"
Plug "neovim/nvim-lspconfig"
Plug "L3MON4D3/LuaSnip"
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "saadparwaiz1/cmp_luasnip"

-- Copilot
Plug "github/copilot.vim"

-- Terminal
Plug "akinsho/toggleterm.nvim"

-- Линтер для Go
Plug "fatih/vim-go"

vim.call("plug#end")

