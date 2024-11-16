require("nvim-treesitter.configs").setup({
	ensure_installed = { "go" },
})

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({})

require("mason-null-ls").setup({
	ensure_installed = { "gofumpt", "goimports-reviser" },
	handlers = {},
	automatic_setup = true,
	automatic_installation = true,
})
