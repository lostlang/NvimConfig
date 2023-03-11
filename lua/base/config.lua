Vim = vim
Opt = Vim.opt
Cmd = Vim.cmd

Opt.mouse = "a"
Opt.clipboard = "unnamedplus"
Opt.colorcolumn = "100"
Opt.number = true
Opt.relativenumber = true
Opt.encoding = "utf-8"
Opt.smartindent = true

-- тестовые символы ·•●
Opt.listchars:append({ space = "•" })
Opt.listchars:append({ tab = ">-" })
Opt.listchars:append({ eol = "↵" })
Opt.list = true

LSP_SERVERS = { "gopls", "pyright", "rust_analyzer", "lua_ls", "elixirls" }
FORMATER = { "gofumpt", "goimports-reviser", "black", "autopep8", "rustfmt", "stylua", "mix", "yamlfmt" }
LANG_SUPPORT = { "go", "python", "rust", "lua", "elixir", "markdown" }

Map = Vim.api.nvim_set_keymap
Default_opt = { noremap = true, silent = true }
