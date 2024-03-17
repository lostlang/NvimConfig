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

-- Перекраска статусбара
vim.api.nvim_set_hl(0, "TabLine", { bg = Color.black })

-- Copilot цвет Lsp
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = Color.green })

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
	vim.api.nvim_set_hl(0, sign.name, { fg = sign.guifg })
end

for _, text in ipairs(diagnostic_text) do
	vim.api.nvim_set_hl(0, text.name, { fg = text.guifg, bg = text.guibg })
end

for _, underline in ipairs(diagnostic_underline) do
	vim.api.nvim_set_hl(0, underline.name, { fg = underline.guifg })
end

require("homebrew.lualine-theme")
