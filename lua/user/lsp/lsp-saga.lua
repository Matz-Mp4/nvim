local status_ok, saga = pcall(require, 'lspsaga')
if not status_ok then
  return
end

saga.init_lsp_saga({
  border_style = "single",
  rename_in_select = true,
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
  -- preview lines of lsp_finder and definition preview
  max_preview_lines = 20,
  -- use emoji lightbulb in default
  code_action_icon = " ",
  -- if true can press number to execute the codeaction in codeaction window
  code_action_num_shortcut = true,

  code_action_lightbulb = {
    enable = false,
    sign = true,
    enable_in_insert = false,
    sign_priority = 10,
    virtual_text = true,
  },

  definition_action_keys = {
    edit = '<C-c>o',
    vsplit = '<C-c>v',
    split = '<C-c>i',
    tabe = '<C-c>t',
    quit = 'q',
  },
})
