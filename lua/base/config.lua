vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "100"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.encoding = "utf-8"
vim.opt.smartindent = true
vim.opt.spelllang = { "en_us", "ru" }
vim.opt.spell = true

-- тестовые символы ·•●
vim.opt.listchars:append({ space = "•" })
vim.opt.listchars:append({ tab = "▎-" })
vim.opt.listchars:append({ eol = "↵" })
vim.opt.list = true

LSP_SERVERS = {
	"gopls",
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"somesass_ls",
	--"elixirls", "tsserver", "svelte", "dockerls"
}

FORMATER = {
	"gofumpt",
	"goimports-reviser",
	"gofumpt",
	"stylua",
	"black",
	"autopep8",
	-- "prettierd", "hadolint",
}

LANG_SUPPORT = {
	"go",
	"lua",
	"python",
	"markdown",
	"rust",
	"yaml",
	"toml",
	--"elixir", "typescript", "javascript", "svelte", "dockerfile"
}
