require("nvim-treesitter.configs").setup({
	ensure_installed = { "python" },
})

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({})
