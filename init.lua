
require "base.plugin_install"
require "base.config"
require "base.themes"

require "mapping.base"

-- Разные плашечки
require "plugins.bufferline"
require "mapping.bufferline"

require "plugins.nvimtree"
require "mapping.nvimtree"

require "mapping.tagbar"

require "plugins.lualine"

-- Разукрашивание
require "plugins.treesitter"
require "plugins.nvimcolorizer"
require "plugins.indentblackline"

-- LSP
require "plugins.mason"
require "plugins.lspconfig"
require "plugins.luasnip"
require "mapping.luasnip"

-- Приятные мелочи
require "plugins.comment"

require "plugins.telescope"
require "mapping.telescope"

require "plugins.toggleterm"

require "plugins.diffview"
require "mapping.diffview"

-- трабл
require "plugins.trouble"

-- Rust
require "plugins.rust"

