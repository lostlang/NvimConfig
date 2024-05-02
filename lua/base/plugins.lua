require("lazy").setup({
	-- Theme
	{
		"lostlang/lostsand.nvim",
		lazy = false,
		dir = "~/Projects/lostsand.nvim",
		config = function()
			vim.cmd([[colorscheme lostsand]])
		end,
	},

	-- Highlighting
	-- Code highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
		build = ":TSUpdate",
		config = function()
			require("plugins.treesitter")
		end,
	},
	-- Delimiters highlighting
	{
		"hiphish/rainbow-delimiters.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.rainbow-delimiters")
		end,
	},
	-- Same targets highlighting
	{
		"RRethy/vim-illuminate",
		event = "VeryLazy",
	},
	-- Blank line highlighting
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		main = "ibl",
		config = function()
			require("plugins.ibl")
		end,
	},
	-- Todo and etc highlighting
	{
		"folke/todo-comments.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = true,
	},
	-- Color highlighting
	{
		"norcalli/nvim-colorizer.lua",
		event = "VeryLazy",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- Git signs
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- Interactive part
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.lualine")
		end,
	},
	-- Buffer line
	{
		"willothy/nvim-cokeline",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"stevearc/resession.nvim",
		},
		config = function()
			require("plugins.cokeline")
			require("mapping.cokeline")
		end,
	},
	-- File tree
	{
		"nvim-neo-tree/neo-tree.nvim",
		event = "VeryLazy",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("plugins.neotree")
			require("mapping.neotree")
		end,
	},
	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.toggleterm")
		end,
	},
	-- Info about errors
	{
		"folke/trouble.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.trouble")
			require("mapping.trouble")
		end,
	},
	-- Git разница
	{
		"sindrets/diffview.nvim",
		event = "VeryLazy",
		config = function()
			require("diffview").setup({})
			require("mapping.diffview")
		end,
	},

	-- Easily comment
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Auto pair
	{
		"windwp/nvim-autopairs",
		event = "VeryLazy",
		-- config = true,
	},

	-- Поиск по файлам
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- fzf для telescope
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"ii14/emmylua-nvim",

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
	-- Бесплатный аналог
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({})
		end,
	},

	-- New plugins
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{
		"startup-nvim/startup.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- require("startup").setup()
		end,
	},
	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	event = "VeryLazy",
	-- 	config = function() end,
	-- },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- {
	-- 	"jeniasaigak/goplay.nvim",
	-- 	event = "VeryLazy",
	-- 	config = function()
	-- 		require("goplay").setup()
	-- 	end,
	-- },
})
