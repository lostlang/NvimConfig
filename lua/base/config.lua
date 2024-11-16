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

FORMATER = {
	-- "golangci_lint_ls",
	-- "gofumpt",
	-- "goimports-reviser",
	-- "gofumpt",
	-- "stylua",
	-- "black",
	-- "autopep8",
	-- "prettierd", "hadolint",
}
