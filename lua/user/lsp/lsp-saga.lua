local status_ok, saga = pcall(require, "lspsaga")
if not status_ok then
  return
end

vim.keymap.set("n", "Z", require("lspsaga.hover").render_hover_doc, { silent = true })

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-a>", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
vim.keymap.set("n", "<C-s>", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })

saga.init_lsp_saga({
  border_style = "single",
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },

  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  move_in_saga = { prev = '<C-p>', next = '<C-n>' },
  -- Error, Warn, Info, Hint
  -- use emoji like
  -- { "🙀", "😿", "😾", "😺" }
  -- or
  -- { "😡", "😥", "😤", "😐" }
  -- and diagnostic_header can be a function type
  -- must return a string and when diagnostic_header
  -- is function type it will have a param `entry`
  -- entry is a table type has these filed
  -- { bufnr, code, col, end_col, end_lnum, lnum, message, severity, source }

  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>", -- quit can be a table
  },
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  -- show diagnostic source
  show_diagnostic_source = true,
  -- add bracket or something with diagnostic source, just have 2 elements
  diagnostic_source_bracket = {},
  -- preview lines of lsp_finder and definition preview
  max_preview_lines = 20,
  -- use emoji lightbulb in default
  code_action_icon = " ",
  -- if true can press number to execute the codeaction in codeaction window
  code_action_num_shortcut = true,

  code_action_lightbulb = {
    enable = true,
    sign = true,
    enable_in_insert = false,
    sign_priority = 20,
    virtual_text = true,
  },
})
