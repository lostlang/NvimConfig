local colors = {
	black = "#06080A",
	white = "#A0A8CD",
	red = "#FE6D85",
	green = "#98C379",
	blue = "#9FBBF3",
	orange = "#F6955B",
	darkgray = "#11121D",
	lightgray = "#212234",
	inactivegray = "#4A5057",
}

Tokyodark = {
	normal = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	insert = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	visual = {
		a = { bg = colors.orange, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	replace = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	command = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { bg = colors.darkgray, fg = colors.white },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.inactivegray, gui = "bold" },
		b = { bg = colors.darkgray, fg = colors.inactivegray },
		c = { bg = colors.darkgray, fg = colors.inactivegray },
	},
}
