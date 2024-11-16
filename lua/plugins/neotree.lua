require("neo-tree").setup({
	window = {
		position = "float",
		mappings = {
			["o"] = "open",
		},
	},
	default_component_configs = {
		git_status = {
			symbols = {
				untracked = "",
				unstaged = "",
				staged = "󰸞",
			},
		},
	},
})
