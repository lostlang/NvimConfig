require("render-markdown").setup({
	heading = {
		icons = { "󰬺 ", "󰬻 ", "󰬼 ", "󰬽 ", "󰬾 ", "󰬿 " },
		signs = { "󰌕 " },
		-- width = "block",
	},
	paragraph = {
		-- left_margin = 2,
	},
	code = {
		language_pad = 2,
		left_pad = 2,
		-- width = "block",
		border = "thick",
	},
	bullet = {
		icons = { "", "", "", "" },
		-- left_pad = 2,
	},
	checkbox = {
		unchecked = {
			icon = "󰄱 ",
		},
		checked = {
			icon = "󰡖 ",
			scope_highlight = "@markup.strikethrough",
		},
		custom = {
			todo = {
				raw = "[-]",
				rendered = "󰈸 ",
				scope_highlight = "Todo",
			},
			test = {
				raw = "[~]",
				rendered = "󰙨 ",
				highlight = "RenderMarkdownCustomCheckboxTest",
				scope_highlight = "RenderMarkdownCustomCheckboxTest",
			},
		},
	},
	quote = {
		repeat_linebreak = true,
	},
	win_options = {
		showbreak = { default = "", rendered = "  " },
		breakindent = { default = false, rendered = true },
		breakindentopt = { default = "", rendered = "" },
	},
	pipe_table = {
		preset = "heavy",
		alignment_indicator = "",
		cell = "trimmed",
	},
})
