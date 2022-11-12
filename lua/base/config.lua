
local opt = vim.opt

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.colorcolumn = "100"

opt.number = true
opt.relativenumber = true

opt.encoding = "utf-8"

opt.smartindent = true

opt.scrolloff = 10

-- тестовые символы ·•●
opt.listchars:append({space = "•"})
opt.listchars:append({tab = ">-"})
opt.listchars:append({eol = "↵"})
opt.list = true

LSP_SERVERS = {"sumneko_lua", "gopls", "pyright", "rust_analyzer", "elixirls"}
LANG_SUPPORT = {"lua", "go", "python", "rust", "elixir"}

