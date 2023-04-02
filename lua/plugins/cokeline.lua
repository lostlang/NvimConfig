local is_picking_focus = require("cokeline/mappings").is_picking_focus
local is_picking_close = require("cokeline/mappings").is_picking_close
local get_hex = require("cokeline/utils").get_hex

local dark = Color.black
local text = get_hex("Comment", "fg")
local grey = get_hex("ColorColumn", "bg")
local light = get_hex("Comment", "fg")

require("cokeline").setup({
	default_hl = {
		fg = function(buffer)
			if buffer.is_focused then
				return dark
			end
			return text
		end,
		bg = function(buffer)
			if buffer.is_focused then
				return Color.yellow
			end
			return grey
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
			fg = dark,
			bg = function(buffer)
				if buffer.is_focused then
					return Color.yellow
				end
				return grey
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
					return Color.yellow
				end
				if is_picking_close() then
					return Color.red
				end

				if buffer.is_focused then
					return dark
				else
					return light
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
					return dark
				end
				return Color.green
			end,
		},
		{
			text = " ",
			fg = function(buffer)
				if buffer.is_focused then
					return dark
				end
				return Color.red
			end,
			delete_buffer_on_left_click = true,
		},
		{
			text = "",
			fg = function(buffer)
				if buffer.is_focused then
					return Color.yellow
				end
				return grey
			end,
			bg = dark,
		},
	},
	sidebar = {
		filetype = "neo-tree",
		components = {
			{
				text = "        Neo-tree",
				fg = Color.yellow,
				bg = dark,
				style = "bold",
			},
		},
	},
})
