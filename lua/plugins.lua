local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  require 'plugins.everforest',
  require 'plugins.catppuccin',
  require 'plugins.treesitter',
  require 'plugins.autopairs',
  require 'plugins.mini',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.zen-mode',

  -- TODO: to check
  -- https://github.com/krshrimali/context-pilot.nvim - git helper plugin
}

require("lazy").setup(plugins)
