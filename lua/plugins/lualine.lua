require("lualine").setup({
	options = {
		theme = "lostsand",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			"DiffviewFiles",
			"DiffviewFileHistory",
			"neo-tree",
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			{
				function()
					return vim.bo.modified and "  UNSAVED " or ""
				end,
			},
			"searchcount",
		},
		lualine_c = { "diff", "diagnostics" },
		lualine_x = { "filetype" },
		lualine_y = { "encoding" },
		lualine_z = { "location" },
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
