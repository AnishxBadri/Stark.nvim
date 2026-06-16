local M = {}

function M.get(p, cfg)
	local italic_c = cfg.italic_comments or nil
	local italic_imp = cfg.italic_imports or nil
	local kw_bold = cfg.bold_keywords or nil

	return {
		-- Comments
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { fg = p.fg_dim, italic = italic_c },
		["@comment.todo"] = { fg = p.gold, bold = true },
		["@comment.warning"] = { fg = p.amber, bold = true },
		["@comment.error"] = { fg = p.red, bold = true },
		["@comment.note"] = { fg = p.sky, bold = true },

		["@punctuation.delimiter"] = { fg = p.fg_dim },
		["@punctuation.bracket"] = { fg = p.fg_dim },
		["@punctuation.special"] = { fg = p.teal },

		-- Strings
		["@string"] = { link = "String" },
		["@string.documentation"] = { fg = p.mint, italic = true },
		["@string.regex"] = { fg = p.teal },
		["@string.escape"] = { fg = p.teal, bold = true },
		["@string.special"] = { fg = p.teal },
		["@string.special.url"] = { fg = p.sky_br, underline = true },
		["@string.special.symbol"] = { fg = p.gold },
		["@character"] = { link = "Character" },
		["@character.special"] = { fg = p.teal },
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },
		["@boolean"] = { link = "Boolean" },

		["@function"] = { fg = p.gold },
		["@function.builtin"] = { fg = p.gold, italic = true },
		["@function.call"] = { fg = p.gold },
		["@function.macro"] = { fg = p.gold },
		["@function.method"] = { fg = p.gold },
		["@function.method.call"] = { fg = p.gold },
		["@constructor"] = { fg = p.gold },

		["@variable"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.rose, italic = true },
		["@variable.parameter"] = { fg = p.rose },
		["@variable.parameter.builtin"] = { fg = p.rose, italic = true },
		["@variable.member"] = { fg = p.fg },

		-- Keywords
		["@keyword"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.function"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.operator"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.return"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.import"] = { fg = italic_imp and p.fg_cool or p.fg, italic = italic_imp },
		["@keyword.modifier"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.repeat"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.conditional"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.conditional.ternary"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.exception"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.directive"] = { fg = p.fg_cool, bold = kw_bold },
		["@keyword.coroutine"] = { fg = p.fg_cool, bold = kw_bold },

		-- Types
		["@type"] = { fg = p.amber },
		["@type.builtin"] = { fg = p.amber, italic = true },
		["@type.definition"] = { fg = p.amber, bold = true },
		["@type.qualifier"] = { fg = p.fg_cool, bold = kw_bold },

		["@module"] = { fg = p.fg_cool },
		["@module.builtin"] = { fg = p.fg_cool, italic = true },
		["@namespace"] = { fg = p.fg_cool },

		["@constant"] = { fg = p.amber },
		["@constant.builtin"] = { fg = p.fg_dim, italic = true },
		["@constant.macro"] = { fg = p.sky },

		["@attribute"] = { fg = p.sky },
		["@attribute.builtin"] = { fg = p.sky, italic = true },

		-- Properties
		["@property"] = { fg = p.fg },

		-- Tags (HTML/JSX)
		["@tag"] = { fg = p.sky },
		["@tag.builtin"] = { fg = p.sky, italic = true },
		["@tag.attribute"] = { fg = p.rose },
		["@tag.delimiter"] = { fg = p.fg_dim },

		["@operator"] = { fg = p.fg_dim },
		["@label"] = { fg = p.fg_cool, bold = kw_bold },
		["@error"] = { fg = p.red, bold = true },
		["@none"] = { fg = p.fg },
		["@conceal"] = { fg = p.comment },
		["@diff.plus"] = { link = "DiffAdd" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.delta"] = { link = "DiffChange" },
	}
end

return M
