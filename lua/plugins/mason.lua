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
	ensure_installed = LSP_SERVERS,
	automatic_installation = true,
})

require("mason-null-ls").setup({
	ensure_installed = FORMATER,
	handlers = {},
	automatic_setup = true,
	automatic_installation = true,
})
