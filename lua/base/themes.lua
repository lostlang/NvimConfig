
vim.cmd("colorscheme tokyodark")

vim.opt.termguicolors = true

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- Кастомная тема для lualine
local colors = {
	black        = "#1c1e26",
	white        = "#6C6F93",
	red          = "#F43E5C",
	green        = "#09F7A0",
	blue         = "#25B2BC",
	yellow       = "#F09383",
	gray         = "#E95678",
	darkgray     = "#11121D",
	lightgray    = "#161821",
	inactivegray = "#3e445e",
}

Horizon_custom = {
	normal = {
		a = {bg = colors.gray, fg = colors.black, gui = "bold"},
		b = {bg = colors.lightgray, fg = colors.white},
		c = {bg = colors.darkgray, fg = colors.white},
	},
	insert = {
		a = {bg = colors.blue, fg = colors.black, gui = "bold"},
		b = {bg = colors.lightgray, fg = colors.white},
		c = {bg = colors.darkgray, fg = colors.white},
	},
	visual = {
		a = {bg = colors.yellow, fg = colors.black, gui = "bold"},
		b = {bg = colors.lightgray, fg = colors.white},
		c = {bg = colors.darkgray, fg = colors.white},
	},
	replace = {
		a = {bg = colors.red, fg = colors.black, gui = "bold"},
		b = {bg = colors.lightgray, fg = colors.white},
		c = {bg = colors.darkgray, fg = colors.white},
	},
	command = {
		a = {bg = colors.green, fg = colors.black, gui = "bold"},
		b = {bg = colors.lightgray, fg = colors.white},
		c = {bg = colors.darkgray, fg = colors.white},
	},
	inactive = {
		a = {bg = colors.darkgray, fg = colors.inactivegray, gui = "bold"},
		b = {bg = colors.darkgray, fg = colors.inactivegray},
		c = {bg = colors.darkgray, fg = colors.inactivegray},
	},
}

