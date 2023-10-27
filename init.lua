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
require("base.plugin_install")
require("base.themes")

require("mapping.base")

-- Разные плашечки
require("plugins.cokeline")
require("mapping.cokeline")

require("plugins.neotree")
require("mapping.neotree")

require("plugins.lualine")

-- Разукрашивание
require("plugins.treesitter")
require("plugins.indentblankline")
--
-- LSP
require("plugins.mason")
require("plugins.lspconfig")
require("plugins.luasnip")
require("mapping.lspconfig")
require("mapping.luasnip")
require("plugins.copilot")

-- Приятные мелочи
require("plugins.comment")

require("plugins.telescope")
require("mapping.telescope")

require("plugins.toggleterm")

require("plugins.diffview")
require("mapping.diffview")

-- Tрабл
require("plugins.trouble")
require("mapping.trouble")

-- Null ls
require("plugins.nullls")
