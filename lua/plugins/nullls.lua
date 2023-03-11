local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
	on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			Cmd("autocmd BufWritePre * lua vim.lsp.buf.format()")
		end
	end,
})
