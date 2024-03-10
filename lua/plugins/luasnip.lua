vim.o.completeopt = "menu,menuone,noselect"

local kind_icons = {
	Text = "",
	Method = "",
	Function = "󰡱",
	Constructor = "",
	Field = "󰂡",
	Variable = "",
	Class = "󰠱",
	Interface = "",
	Module = "󰅱",
	Property = "󱈤",
	Unit = "",
	Value = "󰎠",
	Enum = "",
	Keyword = "󰌋",
	Snippet = "",
	Color = "",
	File = "󰈙",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "󰐀",
	Struct = "",
	Event = "",
	Operator = "󰆖",
	TypeParameter = "󰅲",
	Copilot = "",
	Codeium = "",
}

local cmp = require("cmp")

cmp.setup({
	completion = {
		autocomplete = false,
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = {
		{ name = "copilot" },
		{ name = "codeium" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				luasnip = "[Snip]",
				nvim_lua = "[Lua]",
				treesitter = "[Treesitter]",
				path = "[Path]",
				nvim_lsp_signature_help = "[Signature]",
				copilot = "[AI]",
				codeium = "[AI]",
			})[entry.source.name]
			return vim_item
		end,
	},
})
