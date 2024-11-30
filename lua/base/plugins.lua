require("lazy").setup({
	-- Theme
	{
		"lostlang/lostsand.nvim",
		dir = "~/Project/lostsand.nvim",
		config = function()
			vim.cmd([[colorscheme lostsand]])
		end,
	},

	-- Highlighting
	-- Code highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugins.treesitter")
		end,
	},
	-- Delimiters highlighting
	{
		"hiphish/rainbow-delimiters.nvim",
		config = function()
			require("plugins.rainbow-delimiters")
		end,
	},
	-- Same targets highlighting
	{
		"RRethy/vim-illuminate",
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
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("plugins.todo")
		end,
	},
	-- Color highlighting
	{
		"norcalli/nvim-colorizer.lua",
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
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.lualine")
		end,
	},
	-- File tree
	{
		"nvim-neo-tree/neo-tree.nvim",
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
		init = function()
			if vim.fn.argc(-1) == 1 then
				local stat = vim.loop.fs_stat(vim.fn.argv(0))
				if stat and stat.type == "directory" then
					require("neo-tree")
				end
			end
		end,
	},
	-- Поиск по файлам
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- fzf для telescope
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
		config = function()
			require("plugins.telescope")
			require("mapping.telescope")
		end,
	},
	-- Git разница
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup({})
			require("mapping.diffview")
		end,
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
				opts = {},
			},
			{
				"ray-x/lsp_signature.nvim",
				event = "VeryLazy",
				opts = {},
			},
		},
		config = function()
			require("plugins.mason")
			require("plugins.lspconfig")
			require("mapping.lspconfig")
			require("plugins.lang.bundle")
		end,
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
		config = function()
			require("plugins.cmp")
			require("mapping.cmp")
		end,
	},
	-- Линтер
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			{
				"jay-babu/mason-null-ls.nvim",
				event = { "BufReadPre", "BufNewFile" },
				dependencies = { "williamboman/mason.nvim" },
			},
		},
		config = function()
			require("plugins.nullls")
		end,
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
	-- {
	-- 	"huggingface/llm.nvim",
	-- 	config = function()
	-- 		require("llm").setup({
	-- 			model = "qwen2.5-coder:0.5b",
	-- 			url = "http://localhost:11434",
	-- 			-- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
	-- 			request_body = {
	-- 				-- Modelfile options for the model you use
	-- 				options = {
	-- 					temperature = 0.2,
	-- 					top_p = 0.95,
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- },

	-- Markdown
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"echasnovski/mini.nvim",
		}, -- if you use the mini.nvim suite
		config = function()
			require("plugins.render-markdown")
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
})
