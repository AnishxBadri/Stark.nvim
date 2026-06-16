return {
	none = "NONE",

	-- Backgrounds
	bg = "#0d0d0d", -- editor canvas
	bg_subtle = "#161616", -- cursorline, very subtle highlight
	bg_code = "#111111", -- sidebars, floats, statusline
	bg_hover = "#1e1e1e", -- pmenu sel, active list item
	bg_select = "#2a2a2a", -- visual selection

	-- Foregrounds
	gray = "#3a3a3a", -- indent guides, separators
	comment = "#585858", -- comments, folds
	fg_dim = "#8a8a8a", -- line numbers, operators, inactive UI
	fg = "#ead8b6", -- normal text
	fg_cool = "#d4d4d4", -- warm bone — emphasized text, bold keywords

	-- Accents
	black = "#0a0a0a", -- terminal slot 0
	red = "#f5425d", -- errors, deletions, exceptions
	mint = "#00CF9C", -- strings, additions, success, split divider
	amber = "#FEB301", -- types, warnings, numbers, modified
	sky = "#0091FF", -- decorators, attributes, special files, links

	-- Loud invocation (sibling of amber, not brightness variant)
	gold = "#f5d532", -- callable invocations (functions, macros)

	-- Bright variants (same hue, lighter L — "active form of base")
	red_br = "#FB6A7D", -- urgent diagnostics, terminal slot 9
	mint_br = "#33E5BB", -- active addition (diff add, multi-selection)
	sky_br = "#4DB8FF", -- URL targets, search current position

	-- Syntax extensions
	rose = "#fb7185", -- parameters, self/this, html attrs
	teal = "#5eead4", -- regex, escapes, special chars

	-- Diff tint backgrounds
	diff_add = "#0d2818", -- mint tint
	diff_chg = "#26200B", -- amber tint
	diff_del = "#2a0d10", -- red tint
	diff_txt = "#332209", -- gold tint
}
