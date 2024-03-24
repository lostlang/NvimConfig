local is_picking_focus = require("cokeline/mappings").is_picking_focus
local is_picking_close = require("cokeline/mappings").is_picking_close

local color = {
	black = vim.g.terminal_color_0,
	white = vim.g.terminal_color_7,
	light_white = vim.g.terminal_color_15,
	red = vim.g.terminal_color_1,
	green = vim.g.terminal_color_2,
	blue = vim.g.terminal_color_4,
	yellow = vim.g.terminal_color_3,
}

function setup()
	M = {
		{
			text = function(buffer)
				if buffer.index ~= 1 then
					return ""
				end
				return " "
			end,
			fg = color.light_white,
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

				if not buffer.is_focused then
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
				if not buffer.is_focused then
					return color.yellow
				end
			end,
		},
		{
			text = " ",
			fg = function(buffer)
				if not buffer.is_focused then
					return color.red
				end
			end,
			delete_buffer_on_left_click = true,
		},
		{
			text = " ",
			fg = function(buffer)
				if buffer.is_focused then
					return color.blue
				end
				return color.white
			end,
			bg = color.light_white,
		},
	}

	return M
end
