local status_ok, saga = pcall(require, 'lspsaga')
if not status_ok then
  return
end

local keymap = vim.keymap.set
keymap("n","gd", "<cmd>Lspsaga goto_definition<CR>")

saga.setup({
  preview = {
    lines_above = 0,
    lines_below = 10,
  },
  scroll_preview = {
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  request_timeout = 2000,

  definition = {
    edit = '<C-c>o',
    vsplit = '<C-c>v',
    split = '<C-c>i',
    tabe = '<C-c>t',
    quit = 'q',
    close = '<Esc>',
  },

  code_action = {
    num_shortcut = true,
    extend_gitsigns = true,
    keys = {
      -- string |table type
      quit = 'q',
      exec = '<CR>',
    },
  },
  diagnostic = {
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    max_width = 0.7,
    max_height = 0.6,
    max_show_width = 0.9,
    max_show_height = 0.6,
    text_hl_follow = true,
    border_follow = true,
    keys = {
      exec_action = 'o',
      quit = 'q',
      go_action = 'g',
      expand_or_jump = '<CR>',
      quit_in_show = { 'q', '<ESC>' },
    },
  },

  ui = {
    -- currently only round theme
    theme = 'round',
    -- this option only work in neovim 0.9
    title = true,
    -- border type can be single,double,rounded,solid,shadow.
    border = 'rounded',
    winblend = 0,
    expand = '',
    collapse = '',
    preview = ' ',
    code_action = '💡',
    diagnostic = '🐞',
    incoming = ' ',
    outgoing = ' ',
    colors = {
      --float window normal background color
      normal_bg = '#001536',
      --title background color
      title_bg = '#afd700',

    },
    kind = {},
  },
})
