
require "nvim-lsp-installer".setup {
	ensure_installed = LSP_SERVERS,
	automatic_installation = true,
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
}

