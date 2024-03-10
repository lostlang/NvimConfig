vim.cmd("colorscheme tokyodark")
vim.opt.termguicolors = true
local set_hl = vim.api.nvim_set_hl

Color = {
	red = vim.g.terminal_color_1,
	yellow = vim.g.terminal_color_3,
	green = vim.g.terminal_color_2,
	cyan = vim.g.terminal_color_6,
	blue = vim.g.terminal_color_4,
	violet = vim.g.terminal_color_5,
	white = vim.g.terminal_color_7,
	black = "#11121D",
}

-- Цветные отступы
set_hl(0, "RainbowRed", { fg = Color.red })
set_hl(0, "RainbowYellow", { fg = Color.yellow })
set_hl(0, "RainbowGreen", { fg = Color.green })
set_hl(0, "RainbowCyan", { fg = Color.cyan })
set_hl(0, "RainbowBlue", { fg = Color.blue })
set_hl(0, "RainbowViolet", { fg = Color.violet })

-- Перекраска статусбара
set_hl(0, "TabLine", { bg = Color.black })

-- Copilot цвет Lsp
set_hl(0, "CmpItemKindCopilot", { fg = Color.green })

-- Перекраска LSP
local diagnostic_signs = {
	{ name = "DiagnosticSignError", text = "", guifg = Color.red },
	{ name = "DiagnosticSignWarn", text = "", guifg = Color.yellow },
	{ name = "DiagnosticSignHint", text = "󱠂", guifg = Color.violet },
	{ name = "DiagnosticSignInfo", text = "", guifg = Color.blue },
}

local diagnostic_text = {
	{ name = "DiagnosticVirtualTextError", guifg = Color.red, guibg = "" },
	{ name = "DiagnosticVirtualTextWarn", guifg = Color.yellow, guibg = "" },
	{ name = "DiagnosticVirtualTextHint", guifg = Color.violet, guibg = "" },
	{ name = "DiagnosticVirtualTextInfo", guifg = Color.blue, guibg = "" },
}

local diagnostic_underline = {
	{ name = "DiagnosticUnderlineError", guifg = Color.red, guibg = "" },
	{ name = "DiagnosticUnderlineWarn", guifg = Color.yellow, guibg = "" },
	{ name = "DiagnosticUnderlineHint", guifg = Color.violet, guibg = "" },
	{ name = "DiagnosticUnderlineInfo", guifg = Color.blue, guibg = "" },
}

for _, sign in ipairs(diagnostic_signs) do
	vim.fn.sign_define(sign.name, {
		texthl = sign.name,
		text = sign.text,
		numhl = sign.name,
	})
end

for _, sign in ipairs(diagnostic_signs) do
	set_hl(0, sign.name, { fg = sign.guifg })
end

for _, text in ipairs(diagnostic_text) do
	set_hl(0, text.name, { fg = text.guifg, bg = text.guibg })
end

for _, underline in ipairs(diagnostic_underline) do
	set_hl(0, underline.name, { fg = underline.guifg })
end

-- Кастомная тема для lualine
local colors = {
	black = "#1c1e26",
	white = "#6C6F93",
	darkgray = "#11121D",
	lightgray = "#161821",
	inactivegray = "#3e445e",
}

Horizon_custom = {
	normal = {
		a = { bg = Color.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	insert = {
		a = { bg = Color.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	visual = {
		a = { bg = Color.yellow, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	replace = {
		a = { bg = Color.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	command = {
		a = { bg = Color.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.inactivegray, gui = "bold" },
		b = { bg = colors.darkgray, fg = colors.inactivegray },
		c = { bg = colors.darkgray, fg = colors.inactivegray },
	},
}
