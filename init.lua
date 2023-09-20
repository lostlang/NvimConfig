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
require("plugins.nvimcolorizer")
require("plugins.indentblankline")

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

-- трабл
require("plugins.trouble")
require("mapping.trouble")

-- Null ls
require("plugins.nullls")
