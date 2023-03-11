require("base.plugin_install")
require("base.config")
require("base.themes")

require("mapping.base")

-- Разные плашечки
require("plugins.bufferline")
require("mapping.bufferline")

require("plugins.nvimtree")
require("mapping.nvimtree")

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

-- Rust
-- require "plugins.rust"

-- Null ls
require("plugins.nullls")
