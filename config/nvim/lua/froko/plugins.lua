local plugins = {
  "nvim-lua/plenary.nvim",
  "kkharji/sqlite.lua",
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  "nvim-telescope/telescope-fzy-native.nvim",
  {
    "olimorris/persisted.nvim",
    opts = true,
    config = function(_, opts)
      require("persisted").setup(opts)
      vim.cmd("SessionStart")
    end,
    cmd = {
      "SessionLoad",
      "Session",
    },
    event = { "VeryLazy" },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-treesitter",
      "nvim-web-devicons",
      "persisted.nvim",
      "nvim-telescope/telescope-fzy-native.nvim",
      "plenary.nvim",
    },
    keys = {
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Find grep" },
      { "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<CR>>", desc = "Fuzzy find in buffer" },
    },
    cmd = "Telescope",
  },
  {
    "danielfalk/smart-open.nvim",
    dependencies = {
      "telescope.nvim",
      "nvim-telescope/telescope-fzy-native.nvim",
      "sqlite.lua",
    },
    branch = "0.2.x",
    keys = {
      {
        "<leader>ff",
        "<cmd>lua require('telescope').extensions.smart_open.smart_open({ cwd_only = true })<CR>",
        desc = "Find files",
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = { }
  }
}

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
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup(plugins)
require("froko.colorscheme")
require("froko.lualine")
