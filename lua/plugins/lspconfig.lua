local nvim_lsp = require("lspconfig")

for _, lsp in ipairs(LSP_SERVERS) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 100,
		},
	})
end
