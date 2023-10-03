
local highlight = {
    "RainbowWhite",
--    "RainbowYellow",
--    "RainbowBlue",
--    "RainbowOrange",
--    "RainbowGreen",
--    "RainbowViolet",
--    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowWhite", { fg = "#AAAAAA" })
    --[[ vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" }) ]]
    --[[ vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" }) ]]
    --[[ vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" }) ]]
    --[[ vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" }) ]]
    --[[ vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" }) ]]
    --[[ vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" }) ]]
end)
vim.g.indentLine_enabled = 1
-- -- vim.g.indent_blankline_char = "│"
-- --vim.g.indent_blankline_char = "▏"
vim.g.indent_blankline_char = "▎"
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
