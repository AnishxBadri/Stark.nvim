local M = {}

function M.get(p, cfg)
	return {
		-- Text styles
		["@markup.strong"] = { fg = p.fg_cool, bold = true },
		["@markup.italic"] = { fg = p.fg, italic = true },
		["@markup.strikethrough"] = { fg = p.fg_dim, strikethrough = true },
		["@markup.underline"] = { underline = true },

		-- Headings (gradient cool→warm by depth)
		["@markup.heading.1"] = { fg = p.mint, bold = true },
		["@markup.heading.2"] = { fg = p.mint },
		["@markup.heading.3"] = { fg = p.amber, bold = true },
		["@markup.heading.4"] = { fg = p.amber },
		["@markup.heading.5"] = { fg = p.fg_cool, bold = true },
		["@markup.heading.6"] = { fg = p.fg_cool },

		["@markup.quote"] = { fg = p.fg_dim, italic = true },
		["@markup.math"] = { fg = p.gold },

		["@markup.link"] = { fg = p.sky, underline = true },
		["@markup.link.label"] = { fg = p.mint },
		["@markup.link.url"] = { fg = p.sky_br, underline = true },

		["@markup.raw"] = { fg = p.fg_cool, bg = p.bg_code },
		["@markup.raw.block"] = { fg = p.fg_cool, bg = p.bg_code },

		["@markup.list"] = { fg = p.fg_dim },
		["@markup.list.checked"] = { fg = p.mint },
		["@markup.list.unchecked"] = { fg = p.fg_dim },
	}
end

return M
