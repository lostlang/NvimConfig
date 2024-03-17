require("neo-tree").setup({
	enable_git_status = true,
	enable_diagnostics = true,
	window = {
		mappings = {
			["o"] = "open",
		},
	},
	default_component_configs = {
		git_status = {
			symbols = {
				unstaged = " ",
				staged = "",
			},
		},
	},
})
