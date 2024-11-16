require("mason").setup({
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	handlers = {},
	automatic_setup = true,
	automatic_installation = true,
})
