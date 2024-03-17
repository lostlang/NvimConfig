require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = Tokyodark,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "filename" },
		lualine_c = { "diff", "diagnostics" },
		lualine_x = { "encoding", "filetype" },
		lualine_y = { "location" },
		lualine_z = { 'os.date("!%H:%M", os.time() + (60 * 60 * 5))' },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
})
