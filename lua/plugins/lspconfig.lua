local nvim_lsp = require("lspconfig")

vim.diagnostic.config({
	virtual_text = false,
})

vim.opt.updatetime = 500
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
