local M = {}

local c = require("mauve.palette")

local integrations = {
	"telescope",
	"ui",
	"snacks-dashboard",
	"blinkcmp",
	"fidget",
	"snacks",
	"treesitter",
	"noice",
	"git",
	"grug_far",
	"snacks-picker",
	"man",
	"render-markdown",
}

local function apply()
	local highlights = {
		Normal = { fg = c.fg, bg = c.bg },
		Comment = { fg = c.subtext, italic = true },
		Keyword = { fg = c.mauve },
		String = { fg = c.green },
		Number = { fg = c.yellow },
		LineNr = { fg = c.surface1 },
		CursorLineNr = { fg = c.mauve, bold = true },
		StatusLine = { fg = c.fg, bg = c.bg, bold = true },
		Visual = { bg = c.surface1, bold = true },
		-- Search
		Terminal = { fg = c.fg },
		Search = { fg = c.bg, bg = c.flamingo },
		IncSearch = { fg = c.bg, bg = c.mauve },
		CurSearch = { fg = c.bg, bg = c.red, bold = true },
		-- LSP diagnostics
		DiagnosticError = { fg = c.red },
		DiagnosticWarn = { fg = c.peach },
		DiagnosticInfo = { fg = c.sky },
		DiagnosticHint = { fg = c.teal },
		DiagnosticUnderlineError = { undercurl = true, sp = c.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.peach },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.sky },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.teal },
		DiagnosticVirtualTextError = { fg = c.red, bg = "#3d2030", italic = true },
		DiagnosticVirtualTextWarn = { fg = c.peach, bg = "#3d2e1e", italic = true },
		DiagnosticVirtualTextInfo = { fg = c.sky, bg = "#1e2d3d", italic = true },
		DiagnosticVirtualTextHint = { fg = c.teal, bg = "#1e3d38", italic = true },
		FloatBorder = { fg = c.mauve },
		MatchParen = { fg = c.sapphire, bold = true },
		Identifier = { fg = c.peach },
		Special = { fg = c.mauve },
		Type = { fg = c.sapphire },
		envField = { fg = c.yellow },
		title = { fg = c.mauve, bold = true },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
	for _, name in ipairs(integrations) do
		local ok, mod = pcall(require, "mauve.integrations." .. name)
		if ok then
			mod(c)
		end
	end
end

function M.setup()
	apply()
	vim.api.nvim_create_augroup("MauveHighlights", { clear = true })
	vim.api.nvim_create_autocmd("ColorScheme", {
		group = "MauveHighlights",
		callback = function()
			if vim.g.colors_name == "mauve" then
				apply()
			end
		end,
		desc = "Mauve colourscheme highlights",
	})
end

return M
