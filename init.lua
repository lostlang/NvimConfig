local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("base.config")
require("base.plugins")
require("base.themes")

require("mapping.base")

-- LSP
require("plugins.mason")
require("plugins.lspconfig")
require("plugins.luasnip")
require("mapping.lspconfig")
require("mapping.luasnip")

require("plugins.telescope")
require("mapping.telescope")

-- Null ls
require("plugins.nullls")
