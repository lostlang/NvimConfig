require("lazy").setup({
	-- Темы
	{ "tiagovla/tokyodark.nvim", opts = {} },

	-- Улучшение подсветки
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	--Plug("p00f/nvim-ts-rainbow")
	-- Подсветка отступов
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	-- Простое коментирование
	{ "numToStr/Comment.nvim", opts = {}, lazy = false },
	-- Нижняя строка
	{ "nvim-lualine/lualine.nvim", opts = {} },
	-- Строка влкадок
	{
		"willothy/nvim-cokeline",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"stevearc/resession.nvim",
		},
		config = true,
	},
	-- Дерево файлов
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	-- Git разница
	{
		"sindrets/diffview.nvim",
	},
	-- Поиско по файлам
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- fzf для telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

	-- LSP
	{
		-- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ "j-hui/fidget.nvim", tag = "legacy", opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			"folke/neodev.nvim",
		},
	},

	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
	},

	{
		-- Autocompletion
		"hrsh7th/nvim-cmp",
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",

			-- Adds LSP completion capabilities
			"hrsh7th/cmp-nvim-lsp",

			-- Adds a number of user-friendly snippets
			"rafamadriz/friendly-snippets",
		},
	},

	-- Copilot
	--Plug("zbirenbaum/copilot.lua")
	{
		"zbirenbaum/copilot-cmp",
		dependencies = {
			"zbirenbaum/copilot.lua",
		},
	},

	-- Terminal
	{ "akinsho/toggleterm.nvim", version = "*" },

	-- Инфа по ошибкам
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Линтер общего назначения
	{ "jose-elias-alvarez/null-ls.nvim" },
})
