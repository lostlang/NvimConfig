
require"neo-tree".setup {
	source_selector = {
		winbar = true,
	},
	window = {
		width = 30,
		mappings = {
			["o"] = "open",
			[","] = "prev_source",
			["."] = "next_source",
		},
	}
}

