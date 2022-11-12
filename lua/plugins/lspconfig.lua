
local nvim_lsp = require("lspconfig")

for _, lsp in ipairs(LSP_SERVERS) do
	nvim_lsp[lsp].setup {
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 100,
		}
	}
end

local diagnostic_signs = {
	{name = "DiagnosticSignError", text = ""},
	{name = "DiagnosticSignWarn", text = ""},
	{name = "DiagnosticSignHint", text = ""},
	{name = "DiagnosticSignInfo", text = ""},
}

for _, sign in ipairs(diagnostic_signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name })
end

