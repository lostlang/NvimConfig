
local present, telescope = pcall(require, "telescope")
if not present then
	return
end

telescope.setup {
	vimgrep_arguments = {
		"rg",
		"--color=never",
		"--no-heading",
		"--with-filename",
		"--line-number",
		"--column",
		"--smart-case",
	},
	defaults = {
	file_sorter = require("telescope.sorters").get_fuzzy_file,
	file_ignore_patterns = {"node_modules"},
	generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
	set_env = {["COLORTERM"] = "tokyodark"},
	file_previewer = require("telescope.previewers").vim_buffer_cat.new,
	grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
	qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
	buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
}

local extensions = {"fzf"}

pcall(function()
	for _, ext in ipairs(extensions) do
		telescope.load_extension(ext)
	end
end)

