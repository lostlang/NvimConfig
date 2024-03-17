local is_picking_focus = require("cokeline/mappings").is_picking_focus
local is_picking_close = require("cokeline/mappings").is_picking_close

local color = {
	black = "#06080A",
	white = "#A0A8CD",
	red = "#FE6D85",
	green = "#98C379",
	blue = "#9FBBF3",
	orange = "#F6955B",
	darkgray = "#11121D",
	lightgray = "#212234",
}

require("cokeline").setup({
	default_hl = {
		fg = function(buffer)
			if buffer.is_focused then
				return color.black
			end
			return color.white
		end,
		bg = function(buffer)
			if buffer.is_focused then
				return color.orange
			end
			return color.lightgray
		end,
	},
	components = {
		{
			text = function(buffer)
				if buffer.index ~= 1 then
					return ""
				end
				return " "
			end,
			fg = color.darkgray,
			bg = function(buffer)
				if buffer.is_focused then
					return color.orange
				end
				return color.lightgray
			end,
		},
		{
			text = " ",
		},
		{
			text = function(buffer)
				if is_picking_focus() or is_picking_close() then
					return buffer.pick_letter .. " "
				end
				return buffer.devicon.icon
			end,
			fg = function(buffer)
				if is_picking_focus() then
					return color.orange
				end
				if is_picking_close() then
					return color.red
				end

				if buffer.is_focused then
					return color.black
				else
					return color.blue
				end
			end,
			style = function(_)
				return (is_picking_focus() or is_picking_close()) and "italic,bold" or nil
			end,
		},
		{
			text = function(buffer)
				return buffer.unique_prefix .. buffer.filename .. "⠀"
			end,
			style = function(buffer)
				return buffer.is_focused and "bold" or nil
			end,
		},
		{
			text = function(buffer)
				if buffer.is_modified then
					return " "
				end
				return ""
			end,
			fg = function(buffer)
				if buffer.is_focused then
					return color.black
				end
				return color.green
			end,
		},
		{
			text = " ",
			fg = function(buffer)
				if buffer.is_focused then
					return color.black
				end
				return color.red
			end,
			delete_buffer_on_left_click = true,
		},
		{
			text = " ",
			fg = function(buffer)
				if buffer.is_focused then
					return color.orange
				end
				return color.lightgray
			end,
			bg = color.darkgray,
		},
	},
	sidebar = {
		filetype = "neo-tree",
		components = {
			{
				text = "        󰹩 Neo-Tree",
				fg = color.green,
				bg = color.darkgray,
				style = "bold",
			},
		},
	},
})

vim.api.nvim_set_hl(0, "TabLineFill", { fg = color.darkgray })
