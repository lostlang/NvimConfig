require("nvim-treesitter.configs").setup({
	ensure_installed = { "html", "javascript", "typescript", "css", "scss" },
})

local lspconfig = require("lspconfig")

lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.somesass_ls.setup({})
lspconfig.ts_ls.setup({
	settings = {
		javascript = {
			indentStyle = "space",
			indentWidth = 2,
		},
		typescript = {
			indentStyle = "space",
			indentSize = 2,
		},
	},
})
lspconfig.biome.setup({})
