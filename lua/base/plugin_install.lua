require("lazy").setup({
	-- Темы
	{ "tiagovla/tokyodark.nvim" },

	-- Улучшение подсветки
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	--Plug("p00f/nvim-ts-rainbow")

	-- Подсветка отступов
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
	},

	-- Простое коментирование
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Нижняя строка
	{ "nvim-lualine/lualine.nvim" },

	-- Строка влкадок
	{
		"willothy/nvim-cokeline",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"stevearc/resession.nvim",
		},
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
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- fzf для telescope
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			{
				"j-hui/fidget.nvim",
				tag = "legacy",
			},
		},
	},

	-- Автодополнения к LSP
	{
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

	-- Линтер
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = {
			{
				"jay-babu/mason-null-ls.nvim",
				event = { "BufReadPre", "BufNewFile" },
				dependencies = { "williamboman/mason.nvim" },
			},
		},
	},

	-- Copilot
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
})
