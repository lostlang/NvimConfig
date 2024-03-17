local highlight = {
	"RainbowRed",
	"RainbowOrange",
	"RainbowYellow",
	"RainbowGreen",
	"RainbowCyan",
	"RainbowBlue",
	"RainbowViolet",
}

local p = require("tokyodark.palette")

vim.api.nvim_set_hl(0, highlight[1], { fg = vim.g.terminal_color_1 })
vim.api.nvim_set_hl(0, highlight[2], { fg = p.orange })
vim.api.nvim_set_hl(0, highlight[3], { fg = vim.g.terminal_color_3 })
vim.api.nvim_set_hl(0, highlight[4], { fg = vim.g.terminal_color_2 })
vim.api.nvim_set_hl(0, highlight[5], { fg = vim.g.terminal_color_6 })
vim.api.nvim_set_hl(0, highlight[6], { fg = vim.g.terminal_color_4 })
vim.api.nvim_set_hl(0, highlight[7], { fg = vim.g.terminal_color_5 })

require("ibl").setup({
	indent = { highlight = highlight },
	scope = { enabled = false },
})
