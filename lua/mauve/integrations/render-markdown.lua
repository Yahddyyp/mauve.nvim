return function(c)
	local groups = {
		RenderMarkdownCode = { bg = c.mantle },
		RenderMarkdownCodeInline = { fg = c.mauve, bg = "NONE" },
		RenderMarkdownBullet = { fg = c.mauve },
		RenderMarkdownTableHead = { fg = c.sky },
		RenderMarkdownTableRow = { fg = c.lavender },
		RenderMarkdownSuccess = { fg = c.green },
		RenderMarkdownInfo = { fg = c.sapphire },
		RenderMarkdownHint = { fg = c.teal },
		RenderMarkdownWarn = { fg = c.yellow },
		RenderMarkdownError = { fg = c.red },
		RenderMarkdownUnchecked = { fg = c.overlay1 },
	}

	local heading_colors = { c.mauve, c.peach, c.yellow, c.green, c.red, c.subtext }

	local function darken(hex, percentage, base)
		local function to_rgb(h)
			h = h:gsub("#", "")
			return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
		end
		local r1, g1, b1 = to_rgb(hex)
		local r2, g2, b2 = to_rgb(base)
		local r = math.floor(r1 + (r2 - r1) * percentage)
		local g = math.floor(g1 + (g2 - g1) * percentage)
		local b = math.floor(b1 + (b2 - b1) * percentage)
		return string.format("#%02x%02x%02x", r, g, b)
	end

	local darkening_percentage = 0.905
	for i = 1, 6 do
		local color = heading_colors[i]
		groups["RenderMarkdownH" .. i] = { fg = color }
		groups["RenderMarkdownH" .. i .. "Bg"] = { bg = darken(color, darkening_percentage, c.bg) }
	end

	for group, opts in pairs(groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
