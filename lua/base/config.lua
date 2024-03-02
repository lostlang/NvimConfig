Vim = vim
Opt = Vim.opt
Cmd = Vim.cmd
Map = Vim.keymap.set

Opt.mouse = "a"
Opt.clipboard = "unnamedplus"
Opt.colorcolumn = "100"
Opt.number = true
Opt.relativenumber = true
Opt.encoding = "utf-8"
Opt.smartindent = true

-- тестовые символы ·•●
Opt.listchars:append({ space = "•" })
Opt.listchars:append({ tab = "▎-" })
Opt.listchars:append({ eol = "↵" })
Opt.list = true

LSP_SERVERS = {
	"gopls",
	"lua_ls",
	--"pyright", "rust_analyzer", "elixirls", "tsserver", "svelte", "dockerls"
}

FORMATER = {
	"gofumpt",
	"goimports-reviser",
	"black",
	"autopep8",
	-- "rustfmt",
	"stylua",
	-- "prettierd",
	-- "hadolint",
}

LANG_SUPPORT = {
	"go",
	"lua",
	--"python", "rust", "elixir", "markdown", "yaml", "typescript", "javascript", "svelte", "dockerfile"
}
