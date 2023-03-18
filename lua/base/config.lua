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

LSP_SERVERS = { "gopls", "pyright", "rust_analyzer", "lua_ls", "elixirls", "tsserver" }
FORMATER = { "gofumpt", "goimports-reviser", "black", "autopep8", "rustfmt", "stylua", "mix", "yamlfmt", "eslint_d" }
LANG_SUPPORT = { "go", "python", "rust", "lua", "elixir", "markdown", "typescript", "javascript" }

Map = Vim.keymap.set
