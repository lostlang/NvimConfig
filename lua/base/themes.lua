
Cmd "colorscheme tokyodark"

Opt.termguicolors = true

Color = {
	red = "#ee6d85",
	yellow = "#d7a65f",
	green = "#95c561",
	cyan = "#38a89d",
	blue = "#7199ee",
	violet = "#a485dd",
}

-- Цветные отступы
Cmd (string.format("hi IndentBlanklineIndent1 guifg=%s", Color.red))
Cmd (string.format("hi IndentBlanklineIndent2 guifg=%s", Color.yellow))
Cmd (string.format("hi IndentBlanklineIndent3 guifg=%s", Color.green))
Cmd (string.format("hi IndentBlanklineIndent4 guifg=%s", Color.cyan))
Cmd (string.format("hi IndentBlanklineIndent5 guifg=%s", Color.blue))
Cmd (string.format("hi IndentBlanklineIndent6 guifg=%s", Color.violet))

-- Перекраска LSP
local diagnostic_signs = {
	{name = "DiagnosticSignError", text = "", guifg=Color.red},
	{name = "DiagnosticSignWarn", text = "", guifg=Color.yellow},
	{name = "DiagnosticSignHint", text = "", guifg=Color.violet},
	{name = "DiagnosticSignInfo", text = "", guifg=Color.blueh},
}

local diagnostic_text = {
	{name = "DiagnosticVirtualTextError", guifg=Color.red, guibg=""},
	{name = "DiagnosticVirtualTextWarn", guifg=Color.yellow, guibg=""},
	{name = "DiagnosticVirtualTextHint", guifg=Color.violet, guibg=""},
	{name = "DiagnosticVirtualTextInfo", guifg=Color.blue, guibg=""},
}

local diagnostic_underline = {
	{name = "DiagnosticUnderlineError", guifg=Color.red, guibg=""},
	{name = "DiagnosticUnderlineWarn", guifg=Color.yellow, guibg=""},
	{name = "DiagnosticUnderlineHint", guifg=Color.violet, guibg=""},
	{name = "DiagnosticUnderlineInfo", guifg=Color.blue, guibg=""},
}

for _, sign in ipairs(diagnostic_signs) do
	Vim.fn.sign_define(sign.name, {
		texthl = sign.name,
		text = sign.text,
		numhl = sign.name,
	})
end

for _, sign in ipairs(diagnostic_signs) do
	Cmd (string.format("hi %s guifg=%s", sign.name, sign.guifg))
end


for _, text in ipairs(diagnostic_text) do
	Cmd (string.format("hi %s guifg=%s", text.name, text.guifg))
end

for _, underline in ipairs(diagnostic_underline) do
	Cmd (string.format("hi %s guifg=%s", underline.name, underline.guifg))
end

-- Кастомная тема для lualine
local colors = {
	black        = "#1c1e26",
	white        = "#6C6F93",
	red          = Color.red,
	green        = Color.green,
	blue         = Color.cyan,
	yellow       = Color.yellow,
	gray         = Color.red,
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

