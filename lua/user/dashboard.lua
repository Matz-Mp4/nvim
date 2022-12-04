local db = require('dashboard')
--[[ local home = os.getenv('HOME') ]]

db.custom_center = {
  { icon = '           ',
    desc = 'Recently opened files                   ',
    action = 'Telescope oldfiles',
  },
  { icon = '           ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
  },
 --[[  { icon = '  ',
    desc = 'Neovim Configuration                            ',
    action = 'Telescope dotfiles path=' .. home .. '/.dotfiles',
  }, ]]
  { icon = '           ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
  },
}

db.custom_header = {
  [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
  [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
  [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
  [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
  [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

