local M = {}

function M.get(p, cfg)
	local italic_c = cfg.italic_comments or nil
	local kw_bold = cfg.bold_keywords or nil

	return {
		Comment = { fg = p.comment, italic = italic_c },
		SpecialComment = { fg = p.fg_dim, italic = italic_c },

		-- Constants / Literals
		Constant = { fg = p.amber },
		String = { fg = p.mint },
		Character = { fg = p.mint },
		Number = { fg = p.amber },
		Float = { fg = p.amber },
		Boolean = { fg = p.amber },

		Identifier = { fg = p.fg },
		Function = { fg = p.gold },

		-- Statements / keywords
		Statement = { fg = p.fg_cool, bold = kw_bold },
		Conditional = { fg = p.fg_cool, bold = kw_bold },
		Repeat = { fg = p.fg_cool, bold = kw_bold },
		Label = { fg = p.fg_cool, bold = kw_bold },
		Operator = { fg = p.fg_dim },
		Keyword = { fg = p.fg_cool, bold = kw_bold },
		Exception = { fg = p.red, bold = true },

		-- Preprocessor
		PreProc = { fg = p.sky },
		Include = { fg = p.sky },
		Define = { fg = p.sky },
		Macro = { fg = p.rose },
		PreCondit = { fg = p.sky },

		-- Types
		Type = { fg = p.amber },
		StorageClass = { fg = p.fg_cool, bold = kw_bold },
		Structure = { fg = p.amber },
		Typedef = { fg = p.amber },

		Special = { fg = p.gold },
		SpecialChar = { fg = p.gold },
		Tag = { fg = p.sky },
		Delimiter = { fg = p.fg_dim },
		Debug = { fg = p.amber },

		Underlined = { underline = true },
		Ignore = { fg = p.comment },
		Error = { fg = p.red, bold = true },
		Todo = { fg = p.gold, bold = true },
	}
end

return M
