local nvim_lsp = require("lspconfig")

vim.diagnostic.config({
	virtual_text = false,
})

vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

for _, lsp in ipairs(LSP_SERVERS) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
	})
end

nvim_lsp.lua_ls.setup({
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})
