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
	automatic_setup = true,
	ensure_installed = FORMATER,
})

require("mason-null-ls").setup_handlers()
