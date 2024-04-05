local fn = vim.fn -- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


-- Install your plugins here
return packer.startup(function(use)
  -- My plugins that I use
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "nvim-lua/popup.nvim"
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "lukas-reineke/indent-blankline.nvim"
  use "lewis6991/impatient.nvim"
  use 'nvim-lualine/lualine.nvim'
  --[[ use "akinsho/bufferline.nvim" ]]
  --[[ use "moll/vim-bbye" ]]
  --[[ use "goolord/alpha-nvim" ]]
  use "williamboman/mason.nvim"
  use "tiagovla/tokyodark.nvim"
  use "feline-nvim/feline.nvim"
  use "https://github.com/xiyaowong/nvim-transparent"
  use 'https://github.com/ggandor/leap.nvim'
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
    }
  --[[ use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'} ]]


  --Markdown
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  --ColorSchemes
  use "Lunarvim/colorschemes"
  use "decaycs/decay.nvim"
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  use "morhetz/gruvbox"
  use "folke/tokyonight.nvim"
  use "lunarvim/onedarker.nvim"
  --[[ use "navarasu/onedark.nvim" ]]
  use "yong1le/darkplus.nvim"
  use "luisiacc/gruvbox-baby"
  use "EdenEast/nightfox.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim"
  use "ray-x/lsp_signature.nvim"
  use "glepnir/lspsaga.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  -- Git
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"
  --Nvim-Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  --Which-key
  use "folke/which-key.nvim"

  --Nvim-spectre
  use "https://github.com/nvim-pack/nvim-spectre"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
