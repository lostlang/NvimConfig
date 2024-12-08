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
			scope_highlight = "RenderMarkdownUncheckedText",
		},
		checked = {
			icon = "󰡖 ",
			scope_highlight = "RenderMarkdownDoneText",
		},
		custom = {
			drop = {
				raw = "[-]",
				rendered = "󰜺 ",
				highlight = "RenderMarkdownCustomCheckboxDrop",
				scope_highlight = "RenderMarkdownCustomCheckboxDropText",
			},
			active = {
				raw = "[>]",
				rendered = "󰈸 ",
				highlight = "RenderMarkdownCustomCheckboxActive",
				scope_highlight = "RenderMarkdownCustomCheckboxActiveText",
			},
			test = {
				raw = "[~]",
				rendered = "󰙨 ",
				highlight = "RenderMarkdownCustomCheckboxTest",
				scope_highlight = "RenderMarkdownCustomCheckboxTestText",
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
