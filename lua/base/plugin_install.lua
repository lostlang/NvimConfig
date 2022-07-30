
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- Темы
Plug 'tiagovla/tokyodark.nvim'
-- Иконки
Plug 'kyazdani42/nvim-web-devicons'
-- Улучшение хайлайта
Plug 'nvim-treesitter/nvim-treesitter'
-- Подсветка отступов
Plug 'lukas-reineke/indent-blankline.nvim'
-- Простое коментирование
Plug 'numToStr/Comment.nvim'

-- Нижняя строка
Plug 'nvim-lualine/lualine.nvim'
-- Строка влкадок
Plug "akinsho/bufferline.nvim"
-- Дерево файлов
Plug 'kyazdani42/nvim-tree.lua'
-- Тег бар
Plug 'preservim/tagbar'
-- Телескоп
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
-- fzf
Plug 'nvim-telescope/telescope-fzf-native.nvim'

-- LSP
Plug "williamboman/nvim-lsp-installer"
Plug "neovim/nvim-lspconfig"
Plug "L3MON4D3/LuaSnip"
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'

-- Линтер для Go
Plug 'fatih/vim-go'

vim.call('plug#end')

