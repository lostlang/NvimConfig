require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua" },
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

require("mason-null-ls").setup({
	ensure_installed = { "stylua" },
	handlers = {},
	automatic_setup = true,
	automatic_installation = true,
})
