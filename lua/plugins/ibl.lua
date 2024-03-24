local highlight = {
	"IblRed",
	-- "IblOrange",
	"IblYellow",
	"IblGreen",
	"IblCyan",
	"IblBlue",
	"IblViolet",
}

require("ibl").setup({
	indent = { highlight = highlight },
	scope = { enabled = false },
})
