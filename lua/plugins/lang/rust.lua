require("nvim-treesitter.configs").setup({
	ensure_installed = { "rust" },
})

local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({})
